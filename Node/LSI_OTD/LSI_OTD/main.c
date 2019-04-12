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
#include <communications_setup.h>

int main(void)
{

	atmel_start_init();
	start_ethernet();
	
	//sets up new TCP
	struct tcp_pcb *pcb;
	struct ip_addr dest;
	IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
	pcb = tcp_new();
	tcp_arg(pcb, NULL);
	tcp_connect(pcb, &dest, 8000, client_connected);
	
	while (true) {
		
		ethernetif_mac_input(&LWIP_MACIF_desc);	
		
		/* LWIP timers - ARP, DHCP, TCP, etc. */
		sys_check_timeouts();
		
	}
}

void runCommand(char *string, struct tcp_pcb *pcb)
{
	if(compareString(string, "Input", strlen("Input")) )
	{
		printf("Input = True");
		tcp_write(pcb, "true", strlen("true"), 0);
	}
	else if (compareString(string, "Output", strlen("Output")))
	{
		printf("Output = False");
		tcp_write(pcb, "false", strlen("false"), 0);
	}
	else if (compareString(string, "Send Ping", strlen("Send Ping")))
	{
		printf("Ping Sent");
		gpio_toggle_pin_level(LED0);
	}
	else if (compareString(string, "Listen", strlen("Listen")))
	{
		printf("Listening");
		
		struct tcp_pcb *tempPCB;
		struct ip_addr dest;
		IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
		tempPCB = tcp_new();
		tcp_arg(tempPCB, NULL);
		tcp_connect(tempPCB, &dest, 9000, client_connected);
		
		while (connectionCount != 2) {
			
			ethernetif_mac_input(&LWIP_MACIF_desc);
			
			/* LWIP timers - ARP, DHCP, TCP, etc. */
			sys_check_timeouts();
		}
		
		client_close(tempPCB);
	}
	else if (compareString(string, "Run", strlen("Run")))
	{
		printf("Running");
		tcp_write(pcb, "100ns", strlen("100ns"), 0);
	}
	else if (compareString(string, "Shut Down", strlen("Shut Down")))
	{
		printf("Shutting Down");
		gpio_toggle_pin_level(LED0);
	}
	else if (compareString(string, "On", strlen("On")))
	{
		printf("LED On");
		gpio_set_pin_level(LED0, false);
	}
	else if (compareString(string, "Off", strlen("Off")))
	{
		printf("LED Off");
		gpio_set_pin_level(LED0, true);
	}
	
}
