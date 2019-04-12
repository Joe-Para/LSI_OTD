/*
 * communications_setup.c
 *
 * Created: 4/12/19 2:05:10 AM
 *  Author: Jacob
 */ 

#include <communications_setup.h>

int connectionCount = 0;

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

void mac_receive_cb(struct mac_async_descriptor *desc)
{
	recv_flag = true;
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

void start_ethernet()
{
	int32_t ret;
	u8_t    mac[6];
	/* Read MacAddress from EEPROM */
	read_macaddress(mac);

	systick_enable();

	printf("\r\nHello ATMEL World!\r\n");
	//mac_async_register_callback(&MACIF, MAC_ASYNC_RECEIVE_CB, (FUNC_PTR)mac_receive_cb);

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

void client_close(struct tcp_pcb *TCPpcb)
{
	tcp_arg(TCPpcb, NULL);
	tcp_sent(TCPpcb, NULL);
	tcp_recv(TCPpcb, NULL);
	tcp_close(TCPpcb);
}

err_t client_connected(void *arg, struct tcp_pcb *TCPpcb, err_t err)
{
	connectionCount += 1;
	
	LWIP_UNUSED_ARG(arg);
	
	tcp_sent(TCPpcb, client_sent);
	tcp_recv(TCPpcb, client_recv);
	tcp_poll(TCPpcb, client_poll, 4);
	tcp_err(TCPpcb, client_err);

	return err;
}

err_t client_sent(void *arg, struct tcp_pcb *TCPpcb, u16_t len)
{
	LWIP_UNUSED_ARG(arg);

	return ERR_OK;
}

err_t client_recv(void *arg, struct tcp_pcb *TCPpcb, struct pbuf *p, err_t err)
{
	char *string;
	LWIP_UNUSED_ARG(arg);

	if (err == ERR_OK && p != NULL)
	{
		tcp_recved(TCPpcb, p->tot_len);

		string = p->payload;
		
		runCommand(string);
		
		pbuf_free(p);
	}
	else
	{
		pbuf_free(p);
	}

	return ERR_OK;
}

err_t client_poll(void *arg, struct tcp_pcb *TCPpcb)
{
	static int counter = 1;
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(TCPpcb);

	counter++;

	return ERR_OK;
}

err_t client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(err);

	return ERR_OK;
}

bool compareString(char *string1, char *string2, int string2Len)
{
	for(int i = 0; i < string2Len; i++)
	if(string1[i] != string2[i])
	return false;
	
	return true;
}

