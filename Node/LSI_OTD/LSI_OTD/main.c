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
#include "main.h"

struct tcp_pcb *TCPpcb;
struct io_descriptor *io;

unsigned char flags = 0x0;
unsigned char state = 0x0;

int main(void)
{
	state = state_init;
	atmel_start_init();
	start_ethernet();
	//start_spi(&io);
	//tdc_setup(&io);
	
	//sets up new TCP
	struct ip_addr dest;
	IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
	TCPpcb = tcp_new();
	tcp_arg(TCPpcb, NULL);
	tcp_connect(TCPpcb, &dest, MC_PORT, client_connected);

	while (true) {
		
		if(flags & flag_EthernetActivity)
		{
			flags &= ~flag_EthernetActivity;
			ethernetif_mac_input(&LWIP_MACIF_desc);	
		}
		
		/* LWIP timers - ARP, DHCP, TCP, etc. */
		sys_check_timeouts();
		
	}
}


void TCD_Trigger_ISR(void)
{
	gpio_set_pin_level(TX_PULSE, true);
	delay_us(1);
	gpio_set_pin_level(TX_PULSE, false);
}

void TDC_Interrupt_ISR(void)
{
	//sets TDCResults flag
	flags |= flag_TDCResults;
}

void TDC_LPBK_ISR(void)
{
	//sets flag
	flags |= flag_PulseRecved;
	
	//disables the interrupt
	ext_irq_register(PIO_PD25_IDX, NULL);
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
		tcp_write(TCPpcb, "Ping Sent", strlen("Ping Sent"), 0);
	}
	else if (compareString(string, "Listen", strlen("Listen")))
	{
		state = state_listening;
		ext_irq_register(PIO_PD25_IDX, TDC_LPBK_ISR);
		
		printf("Listening");
	}
	else if (compareString(string, "Stop Listening", strlen("Stop Listening")))
	{
		state = state_wait;
		ext_irq_register(PIO_PD25_IDX, NULL);
		
		printf("Stopped Listening");
		tcp_write(TCPpcb, "Stopped Listening", strlen("Stopped Listening"), 0);
		
	}
	else if (compareString(string, "Run", strlen("Run")))
	{
		//calls function to do time delay run
		printf("Running");
		tcp_write(TCPpcb, "100ns", strlen("100ns"), 0);
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
