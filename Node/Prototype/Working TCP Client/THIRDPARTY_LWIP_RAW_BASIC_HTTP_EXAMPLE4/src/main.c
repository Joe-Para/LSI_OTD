/**
 * \file
 *
 * \brief lwIP Raw HTTP basic example.
 *
 * Copyright (c) 2012-2018 Microchip Technology Inc. and its subsidiaries.
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
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
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

#include "sysclk.h"
#include "ioport.h"
#include "stdio_serial.h"
#include "ethernet.h"
#include "tcp.h"
#include "string.h"
#include "led.h"

bool connectedToWorkstation = false;
int workstationIP[] = {192, 168, 0, 2};

static void client_close(struct tcp_pcb *pcb);
static err_t client_connected(void *arg, struct tcp_pcb *pcb, err_t err);
static err_t client_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err);
static err_t client_poll(void *arg, struct tcp_pcb *pcb);
static err_t client_err(void *arg, err_t err);
static err_t client_sent(void *arg, struct tcp_pcb *pcb, u16_t len);
static bool compareString(char *string1, char *string2, int string2Len);

static void client_close(struct tcp_pcb *pcb)
{
   tcp_arg(pcb, NULL);
   tcp_sent(pcb, NULL);
   tcp_recv(pcb, NULL);
   tcp_close(pcb);
}

static err_t client_connected(void *arg, struct tcp_pcb *pcb, err_t err)
{
   LWIP_UNUSED_ARG(arg);
   
   connectedToWorkstation = true;
   
   tcp_sent(pcb, client_sent);
   tcp_recv(pcb, client_recv);
   tcp_poll(pcb, client_poll, 4);
   tcp_err(pcb, client_err);
   
	char *string = "Hello";
	tcp_sent(pcb, client_sent);
	tcp_write(pcb, string, strlen(string), 0);

	
   return err;
}

static err_t client_sent(void *arg, struct tcp_pcb *pcb, u16_t len)
{
	LWIP_UNUSED_ARG(arg);

	return ERR_OK;
}

static err_t client_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err)
{
	char *string;
	int lenght;
	LWIP_UNUSED_ARG(arg);

	if (err == ERR_OK && p != NULL)
	{
		tcp_recved(pcb, p->tot_len);

		string = p->payload;
		lenght = strlen(string);
		
		if(compareString(string, "On", strlen("On")) || compareString(string, "on", strlen("on")))
		{
			LED_On(LED0);
		}
		else if (compareString(string, "Off", strlen("Off")) || compareString(string, "off", strlen("off")))	
		{
			LED_Off(LED0);
		}
			


		pbuf_free(p);
	}
	else
	{
		pbuf_free(p);
	}

	return ERR_OK;
}

static err_t client_poll(void *arg, struct tcp_pcb *pcb)
{
	static int counter = 1;
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(pcb);

	counter++;

	return ERR_OK;
}

static err_t client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(err);

	return ERR_OK;
}

static bool compareString(char *string1, char *string2, int string2Len)
{
	for(int i = 0; i < string2Len; i++)
		if(string1[i] != string2[i])
		return false;
		
	return true;
}



/**
 * \brief Main program function. Configure the hardware, initialize lwIP
 * TCP/IP stack, and start HTTP service.
 */
int main(void)
{
	/* Initialize the SAM system. */
	sysclk_init();
	board_init();

	/* Bring up the ethernet interface & initialize timer0, channel0. */
	init_ethernet();

	//while node doesn't have an IP
	bool connectedIP = false;
	while (!connectedIP) {
		/* Check for input packet and process it. */
		connectedIP = ethernet_task();
	}
	
	//sets up new TCP 
	struct tcp_pcb *pcb;
	struct ip_addr dest;
	IP4_ADDR(&dest, workstationIP[0], workstationIP[1], workstationIP[2], workstationIP[3]);
	pcb = tcp_new();
	tcp_arg(pcb, NULL);
	tcp_connect(pcb, &dest, 8000, client_connected); //server port for incoming connection

	while(1)
	{
		ethernet_task();
	}
	
}
