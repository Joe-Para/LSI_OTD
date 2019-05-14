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

volatile struct tcp_pcb *TCPpcb;
uint32_t address = &TCPpcb;
struct tcp_pcb *tempPCB;
struct io_descriptor *io;

unsigned char flags = 0x0;
unsigned char isrEnable = 0x0;
unsigned char state = 0x0;

double tof = -1;
int delayTime = 10;
char *topLine;
char bottomLine[20];
char LCD_Message[33];
char *TCP_Message;

int main(void)
{
	//initialization
	state = state_init;
	uint8_t buttons = 0;
	uint8_t activeInterrupts;
	atmel_start_init();
	LCD_begin();
	LCD_print("Initializing...\nConnect Ethernet");
	start_ethernet();
	start_spi();
	tdc_setup(io);
	LCD_begin();
	
	topLine = "Ready";
	//prints the IP address
	printIP();
	
	
	//sets up new TCP
 	struct ip_addr dest;
 	IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
 	TCPpcb = tcp_new();
 	tcp_arg(TCPpcb, NULL);
 	tcp_connect(TCPpcb, &dest, MC_PORT, client_connected);

	while (true) {
		
		//checks button pressed
		buttons = LCD_readButtons();	

		//if TDC is ready for a trigger
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
		//if TDC has results 
		if(flags & flag_TDCResults)
		{
			flags &= ~flag_TDCResults;
			
			activeInterrupts = tdc_read_8(io, TDC_INT_STATUS);
			
			//if overflow occurs tof = -1
			if ((activeInterrupts & TDC_CLOCK_CNTR_OVF_INT) || (activeInterrupts & TDC_COARSE_CNTR_OVF_INT))
			{
				tof = -1;
			}
			else
			{
				tof = get_tof(io);			
			}
			
			printTOF(tof);	
			
			//if remote run, send time to workstation
			if(flags & flag_remoteRun)
			{
				flags &= ~flag_remoteRun;
				tcp_write(TCPpcb, bottomLine, strlen(bottomLine), 0);
			}
		}
		//do ethernet stuff if theres ethernet Activity 
 		if(flags & flag_EthernetActivity)
 		{
 			flags &= ~flag_EthernetActivity;
 			ethernetif_mac_input(&LWIP_MACIF_desc);
 		}
		 //when listening- make a second connection for workstation setup
  		if((flags & flag_PulseRecvd) && (state == state_listening))
		{
  			flags &= ~flag_PulseRecvd;
  			state = state_wait;
  			secondConnect();
  		}
		  //close the second connection once its established
		if(flags & flag_secConnection)
		{
			flags &= ~flag_secConnection;
			client_close(tempPCB);
		}	
		//perform the button click functions
		if(buttons)
		{
			buttonClicked(buttons);
		}
		
		/* LWIP timers - ARP, DHCP, TCP, etc. */
		sys_check_timeouts();
		
	}
}

//ISR for TDC_trigger line
void TDC_Trigger_ISR(void)
{
	//used because when activating ISR it calls the ISR and we don't want false flags
	if(!(isrEnable & isrEnable_TDC_Trigger))
		return;
	
	flags |= flag_TDCTrigger;
	
	//TDC_DEBUG("Hit Trig ISR\n");
	
	//disables the interrupt
	ext_irq_register(TDC_TRIG, NULL);
	isrEnable &= ~isrEnable_TDC_Trigger;
}

//ISR for TDC Interrupt line
void TDC_Interrupt_ISR(void)
{
	//used because when activating ISR it calls the ISR and we don't want false flags
	if(!(isrEnable & isrEnable_TDC_INT))
		return;
	
	//sets TDCResults flag
	flags |= flag_TDCResults;
	
	//TDC_DEBUG("Hit Interrupt ISR\n");
	
	//disables the interrupt
	ext_irq_register(TDC_INT, NULL);
	isrEnable &= ~isrEnable_TDC_INT;
}

//ISR for Loopback line
void TDC_LPBK_ISR(void)
{
	//used because when activating ISR it calls the ISR and we don't want false flags
	if(!(isrEnable & isrEnable_TDC_LPBK)) 
		return;
	
	flags |= flag_PulseRecvd;
	gpio_toggle_pin_level(LED0);
	
	//disables the interrupt
	ext_irq_register(PIO_PD25_IDX, NULL);
	isrEnable &= ~isrEnable_TDC_LPBK;
}

//prints IP address on LCD
void printIP()
{
	sprintf(bottomLine, "%u.%u.%u.%u",	((LWIP_MACIF_desc.ip_addr.addr & 0x000000FF)),
										((LWIP_MACIF_desc.ip_addr.addr & 0x0000FF00) >> 8),
										((LWIP_MACIF_desc.ip_addr.addr & 0x00FF0000) >> 16),
										((LWIP_MACIF_desc.ip_addr.addr & 0xFF000000) >> 24)
										 );
										
	
	strcpy(LCD_Message, topLine);
	strncat(LCD_Message, "\n", sizeof(LCD_Message)-strlen(LCD_Message));
	strncat(LCD_Message, bottomLine, sizeof(LCD_Message)-strlen(LCD_Message));
	
	LCD_print(LCD_Message);	
}

//prints TOF on the LCD
void printTOF(float TOF)
{
	gcvt(TOF, 10, &bottomLine);
	strncat(bottomLine, " us", sizeof(bottomLine)-strlen(bottomLine));
	strcpy(LCD_Message, topLine);
	strncat(LCD_Message, "\n", sizeof(LCD_Message)-strlen(LCD_Message));
	strncat(LCD_Message, bottomLine, sizeof(LCD_Message)-strlen(LCD_Message));
	
	LCD_print(LCD_Message);
}

//tells the TDC to start measurement and enables ISR for TDC trigger + TDC interrrupt
void startRun()
{
	//start ISR
	ext_irq_register(TDC_TRIG, TDC_Trigger_ISR);
	ext_irq_register(TDC_INT, TDC_Interrupt_ISR);
	isrEnable |= isrEnable_TDC_Trigger;
	isrEnable |= isrEnable_TDC_INT;
	
	//start measure
	start_tof_meas(io);
}

//makes a second connection to workstation for workstation setup
void secondConnect()
{
	struct ip_addr dest;
	IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
	tempPCB = tcp_new();
	tcp_arg(tempPCB, NULL);
	tcp_connect(tempPCB, &dest, SC_PORT, client_connected);
}

//performs functions for buttons clicked
//ideal select = run, up = show IP, right = show last run...down/left does whatever else needed

void buttonClicked(uint8_t buttons)
{
	if(buttons & BUTTON_UP)
	{
		topLine = "Short Run";
		LCD_print(topLine);
		delayTime = 20;
		startRun();
	}
	if(buttons & BUTTON_DOWN)
	{
		topLine = "Medium-Long Run";
		LCD_print(topLine);
		delayTime = 1000;
		startRun();
	}
	if(buttons & BUTTON_RIGHT)
	{
		topLine = "Short-Medium Run";
		LCD_print(topLine);
		delayTime = 500;
		startRun();
	}
	if(buttons & BUTTON_LEFT)
	{
		topLine = "Long Run";
		LCD_print(topLine);
		delayTime = 2000;
		startRun();
	}
	if(buttons & BUTTON_SELECT)
	{
		topLine = "IP:";
		printIP();
	}
}


//different commands that workstation should send
void runCommand(char *string)
{
	//sends a ping to TX_Pulse line
	if (compareString(string, "Send Ping", strlen("Send Ping")))
	{	
		
		gpio_set_pin_level(TX_PULSE, true);
		delay_us(1);
		gpio_set_pin_level(TX_PULSE, false);

		//printf("Ping Sent");	
	}
	//sets node state to Listen
	else if (compareString(string, "Listen", strlen("Listen")))
	{
		state = state_listening;
		ext_irq_register(PIO_PD25_IDX,  TDC_LPBK_ISR);
		delay_us(10);
		isrEnable |= isrEnable_TDC_LPBK;
		//printf("Listening");
	}
	//set node start to wait from listening
	else if (compareString(string, "Stop Listening", strlen("Stop Listening")))
	{
		state = state_wait;
		ext_irq_register(PIO_PD25_IDX, NULL);
		isrEnable &= ~isrEnable_TDC_LPBK;
		
		//printf("Stopped Listening");
	}
	//starts a remote run
	else if (compareString(string, "Run", strlen("Run")))
	{
		//calls function to do time delay run
		topLine = "Remote Run";
		flags |= flag_remoteRun;
		startRun();
	}
	//returns the node state to workstation
	else if (compareString(string, "State", strlen("State")))
	{
		if(state == state_init)
			tcp_write(TCPpcb, "Init", strlen("Init"), 0);
		else if (state == state_listening)
			tcp_write(TCPpcb, "Listening", strlen("Listening"), 0);
		else if (state == state_wait)
			tcp_write(TCPpcb, "Wait", strlen("Wait"), 0);
	}
	//closes TCP connection with workstation
	else if (compareString(string, "Close Connection", strlen("Close Connection")))
	{
		//closes TCP connection
		printf("Closing connection");
		tcp_write(TCPpcb, "Closing Connection", strlen("Closing Connection"), 0);
		client_close(TCPpcb);
	}
	else
	{
		printf("Command Not Found");
		tcp_write(TCPpcb, "Command Not Found", strlen("Command Not Found"), 0);
	}
	
}


