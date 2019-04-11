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
#include <peripheral_clk_config.h>
#include <lwip/netif.h>
#include <lwip/timers.h>
#include "lwip_demo_config.h"
#include <string.h>
#include <lwip/tcp.h>
#include <lwip/dhcp.h>


int workstationIP[] = {192, 168, 0, 2};
	
static void client_close(struct tcp_pcb *pcb);
static err_t client_connected(void *arg, struct tcp_pcb *pcb, err_t err);
static err_t client_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err);
static err_t client_poll(void *arg, struct tcp_pcb *pcb);
static err_t client_err(void *arg, err_t err);
static err_t client_sent(void *arg, struct tcp_pcb *pcb, u16_t len);
static bool compareString(char *string1, char *string2, int string2Len);

/* Saved total time in mS since timer was enabled */
volatile static u32_t systick_timems;
volatile static bool  recv_flag = false;
static bool           link_up   = false;

u32_t sys_now(void)
{
	return systick_timems;
}

void SysTick_Handler(void)
{
	systick_timems++;
}

void systick_enable(void)
{
	systick_timems = 0;
	SysTick_Config((CONF_CPU_FREQUENCY) / 1000);
}

static void read_macaddress(u8_t *mac)
{
	#if CONF_AT24MAC_ADDRESS != 0
	uint8_t addr = 0x9A;

	i2c_m_sync_enable(&I2C_AT24MAC);
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, CONF_AT24MAC_ADDRESS, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), &addr, 1);
	io_read(&(I2C_AT24MAC.io), mac, 6);
	#else
	/* set mac to 0x11 if no EEPROM mounted */
	memset(mac, 0x11, 6);
	#endif
}

static void start_ethernet()
{
	int32_t ret;
	u8_t    mac[6];
	/* Read MacAddress from EEPROM */
	read_macaddress(mac);

	systick_enable();

	printf("\r\nHello ATMEL World!\r\n");

	eth_ipstack_init();
	do {
		ret = ethernet_phy_get_link_status(&MACIF_PHY_desc, &link_up);
		if (ret == ERR_NONE && link_up) {
			break;
		}
	} while (true);
	printf("Ethernet Connection established\n");
	LWIP_MACIF_init(mac);
	netif_set_up(&LWIP_MACIF_desc);

	netif_set_default(&LWIP_MACIF_desc);
	mac_async_enable(&MACIF);
	dhcp_start(&LWIP_MACIF_desc);
	
	while(LWIP_MACIF_desc.ip_addr.addr == 0)
	{
		ethernetif_mac_input(&LWIP_MACIF_desc);
		sys_check_timeouts();
	}
	
	
}

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
	
	tcp_sent(pcb, client_sent);
	tcp_recv(pcb, client_recv);
	tcp_poll(pcb, client_poll, 4);
	tcp_err(pcb, client_err);
	
	char *string = "Hello";
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
	int length;
	LWIP_UNUSED_ARG(arg);

	if (err == ERR_OK && p != NULL)
	{
		tcp_recved(pcb, p->tot_len);

		string = p->payload;
		length = strlen(string);
		
		if(compareString(string, "On", strlen("On")) || compareString(string, "on", strlen("on")))
		{
			gpio_set_pin_level(LED0, false);
		}
		else if (compareString(string, "Off", strlen("Off")) || compareString(string, "off", strlen("off")))
		{
			gpio_set_pin_level(LED0, true);
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

int main(void)
{

	atmel_start_init();
	start_ethernet();
	
	//sets up new TCP
	struct tcp_pcb *pcb;
	struct ip_addr dest;
	IP4_ADDR(&dest, workstationIP[0], workstationIP[1], workstationIP[2], workstationIP[3]);
	pcb = tcp_new();
	tcp_arg(pcb, NULL);
	tcp_connect(pcb, &dest, 8000, client_connected);
	
	while (true) {
		
		ethernetif_mac_input(&LWIP_MACIF_desc);	
		
		/* LWIP timers - ARP, DHCP, TCP, etc. */
		sys_check_timeouts();
		
	}
}
