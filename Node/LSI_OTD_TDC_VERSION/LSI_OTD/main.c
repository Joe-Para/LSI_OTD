/**
 * \file
 *
 * \brief Application implement
 *
 * Copyright (c) 2016-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */

#include <atmel_start.h>
#include <string.h>
#include "communications_setup.h"
#include "spi_setup.h"
#include "tdc7200.h"
#include "i2c_setup.h"
#include "main.h"
#include <hal_atomic.h>
#define TDC_DEBUG_ON 1
#define TDC_DEBUG(message) do{ if(TDC_DEBUG_ON) {	printf("%f\n", message);} } while(0)

struct tcp_pcb *TCPpcb;
struct tcp_pcb *tempPCB;
struct io_descriptor *io; //used for SPI

unsigned char flags = 0x0;
unsigned char isrEnable = 0x0;
unsigned char state = 0x0;

long double tof = -1;
int delayTime = 10;
char *topLine;
char bottomLine[];
char LCD_Message[32];
char buff[16];

int main(void)
{
	state = state_init;
	uint8_t buttons = 0;
	atmel_start_init();
	//start_ethernet();
	start_spi();
	tdc_setup(io);
	LCD_begin();
	LCD_print("Welcome!");
	
	uint8_t activeInterrupts;

	//sets up new TCP
	//struct ip_addr dest;
	//IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
	//TCPpcb = tcp_new();
	//tcp_arg(TCPpcb, NULL);
	//tcp_connect(TCPpcb, &dest, MC_PORT, client_connected);

	while (true) {
		
		buttons = LCD_readButtons();	
		
		if(flags & flag_TDCTrigger)
		{
			flags &= ~flag_TDCTrigger;
			
			//send start trigger
			gpio_set_pin_level(TX_PULSE, true);
			delay_us(1);
			gpio_set_pin_level(TX_PULSE, false);
			
			delay_us(delayTime-10);
			
			gpio_set_pin_level(RX_PULSE, true);
			delay_us(1);
			gpio_set_pin_level(RX_PULSE, false);
		}
		
		if(flags & flag_TDCResults)
		{
			flags &= ~flag_TDCResults;
			activeInterrupts = tdc_read_8(io, TDC_INT_STATUS);
			
			if ((activeInterrupts & TDC_CLOCK_CNTR_OVF_INT) || (activeInterrupts & TDC_COARSE_CNTR_OVF_INT))
			{
				tof = 1;
			}
			else
			{
				tof = get_tof(io);
				tof /= 1.0;
				printTOF(tof);
				//print time
			}
		}
		if(buttons)
		{
			buttonClicked(buttons);
		}

		//if(flags & flag_EthernetActivity)
		//{
			//flags &= ~flag_EthernetActivity;
			//ethernetif_mac_input(&LWIP_MACIF_desc);
		//}
		//if((flags & flag_PulseRecvd) && (state == state_listening))
		//{
			//flags &= ~flag_PulseRecvd;
			//state = state_wait;
			//secondConnect();
		//}
		//if(flags & flag_secConnection)
		//{
			//flags &= ~flag_secConnection;
			//client_close(tempPCB);
		//}	
		//if(buttons)
		//{
			//buttonClicked(buttons);
		//}
		//
		///* LWIP timers - ARP, DHCP, TCP, etc. */
		//sys_check_timeouts();
		
	}
}


void TDC_Trigger_ISR(void)
{
	if(!(isrEnable & isrEnable_TDC_Trigger))
		return;
	
	flags |= flag_TDCTrigger;
	
	//TDC_DEBUG("Hit Trig ISR\n");
	
	//disables the interrupt
	ext_irq_register(TDC_TRIG, NULL);
	isrEnable &= ~isrEnable_TDC_Trigger;
}

void TDC_Interrupt_ISR(void)
{
	if(!(isrEnable & isrEnable_TDC_INT))
		return;
	
	//sets TDCResults flag
	flags |= flag_TDCResults;
	
	//TDC_DEBUG("Hit Interrupt ISR\n");
	
	//disables the interrupt
	ext_irq_register(TDC_INT, NULL);
	isrEnable &= ~isrEnable_TDC_INT;
}

void TDC_LPBK_ISR(void)
{
	if(!(isrEnable & isrEnable_TDC_LPBK)) 
		return;
	
	flags |= flag_PulseRecvd;
	gpio_toggle_pin_level(LED0);
	
	//disables the interrupt
	ext_irq_register(PIO_PD25_IDX, NULL);
	isrEnable &= ~isrEnable_TDC_LPBK;
}

void printTOF(float TOF)
{
	gcvt(tof, 10, bottomLine);
	strcpy(LCD_Message, topLine);
	strncat(LCD_Message, bottomLine, sizeof(LCD_Message)-strlen(LCD_Message));
	strncat(LCD_Message, " us", sizeof(LCD_Message)-strlen(LCD_Message));
	LCD_print(LCD_Message);
}

void startRun()
{
	//start ISR
	ext_irq_register(TDC_TRIG, TDC_Trigger_ISR);
	ext_irq_register(TDC_INT, TDC_Interrupt_ISR);
	isrEnable |= isrEnable_TDC_Trigger | isrEnable_TDC_INT;
	
	//start measure
	start_tof_meas(io);	
}

void secondConnect()
{
	struct ip_addr dest;
	IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
	tempPCB = tcp_new();
	tcp_arg(tempPCB, NULL);
	tcp_connect(tempPCB, &dest, SC_PORT, client_connected);
}

void buttonClicked(uint8_t buttons)
{
	if(buttons & BUTTON_UP)
	{
		topLine = "Short Run\n";
		LCD_print(topLine);
		delayTime = 20;
	}
	if(buttons & BUTTON_DOWN)
	{
		topLine = "Medium-Long Run\n";
		LCD_print(topLine);
		delayTime = 1000;
	}
	if(buttons & BUTTON_RIGHT)
	{
		topLine = "Short-Medium Run\n";
		LCD_print(topLine);
		delayTime = 500;
	}
	if(buttons & BUTTON_LEFT)
	{
		topLine = "Long Run\n";
		LCD_print(topLine);
		delayTime = 2000;
	}
	if(buttons & BUTTON_SELECT)
	{
		startRun();
	}
}



void runCommand(char *string)
{
	if(compareString(string, "Input", strlen("Input")) )
	{
		//calls function to check input fiber
		printf("Input = True");
		tcp_write(TCPpcb, "true", strlen("true"), 0);
	}
	else if (compareString(string, "Output", strlen("Output")))
	{
		//calls function to check output fiber
		printf("Output = False");
		tcp_write(TCPpcb, "false", strlen("false"), 0);
	}
	else if (compareString(string, "Send Ping", strlen("Send Ping")))
	{	
		
		gpio_set_pin_level(TX_PULSE, true);
		delay_us(1);
		gpio_set_pin_level(TX_PULSE, false);

		printf("Ping Sent");
		
	}
	else if (compareString(string, "Listen", strlen("Listen")))
	{
		state = state_listening;
		ext_irq_register(PIO_PD25_IDX,  TDC_LPBK_ISR);
		delay_us(10);
		isrEnable |= isrEnable_TDC_LPBK;
		printf("Listening");
	}
	else if (compareString(string, "Stop Listening", strlen("Stop Listening")))
	{
		state = state_wait;
		ext_irq_register(PIO_PD25_IDX, NULL);
		isrEnable &= ~isrEnable_TDC_LPBK;
		
		printf("Stopped Listening");
		//tcp_write(TCPpcb, "Stopped Listening", strlen("Stopped Listening"), 0);
		
	}
	else if (compareString(string, "Run", strlen("Run")))
	{
		//calls function to do time delay run
		printf("Running");
		tcp_write(TCPpcb, "100ns", strlen("100ns"), 0);
	}
	else if (compareString(string, "State", strlen("State")))
	{
		if(state == state_init)
			tcp_write(TCPpcb, "Init", strlen("Init"), 0);
		else if (state == state_listening)
			tcp_write(TCPpcb, "Listening", strlen("Listening"), 0);
		else if (state == state_wait)
			tcp_write(TCPpcb, "Wait", strlen("Wait"), 0);
	}
	else if (compareString(string, "Close Connection", strlen("Close Connection")))
	{
		//closes TCP connection
		printf("Closing connection");
		tcp_write(TCPpcb, "Closing Connection", strlen("Closing Connection"), 0);
		client_close(TCPpcb);
	}
	//on & off are for debugging
	else if (compareString(string, "On", strlen("On")))
	{
		printf("LED On");
		tcp_write(TCPpcb, "LED On", strlen("LED On"), 0);
		gpio_set_pin_level(LED0, false);
	}
	else if (compareString(string, "Off", strlen("Off")))
	{
		printf("LED Off");
		tcp_write(TCPpcb, "LED Off", strlen("LED Off"), 0);
		gpio_set_pin_level(LED0, true);
	}
	else
	{
		printf("Command Not Found");
		tcp_write(TCPpcb, "Command Not Found", strlen("Command Not Found"), 0);
	}
	
}

