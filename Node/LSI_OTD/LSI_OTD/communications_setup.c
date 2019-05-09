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
	flags |= flag_EthernetActivity;
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
	mac_async_register_callback(&MACIF, MAC_ASYNC_RECEIVE_CB, (FUNC_PTR)mac_receive_cb);
	

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

void client_close(struct tcp_pcb *pcb)
{
	tcp_arg(pcb, NULL);
	tcp_sent(pcb, NULL);
	tcp_recv(pcb, NULL);
	tcp_close(pcb);
	connectionCount -= 1;
}

err_t client_connected(void *arg, struct tcp_pcb *pcb, err_t err)
{
	connectionCount += 1;
	
	LWIP_UNUSED_ARG(arg);
	
	if (connectionCount == 1)
		state = state_wait;
	else if (connectionCount > 2)
	{
		flags |= flag_secConnection;
		return err;
	}
	
	tcp_sent(pcb, client_sent);
	tcp_recv(pcb, client_recv);
	tcp_poll(pcb, client_poll, 4);
	tcp_err(pcb, client_err);
	
	return err;
}

err_t client_sent(void *arg, struct tcp_pcb *pcb, u16_t len)
{
	LWIP_UNUSED_ARG(arg);

	return ERR_OK;
}

err_t client_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err)
{
	char *string;
	LWIP_UNUSED_ARG(arg);

	if (err == ERR_OK && p != NULL)
	{
		tcp_recved(pcb, p->tot_len);

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

err_t client_poll(void *arg, struct tcp_pcb *pcb)
{
	static int counter = 1;
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(pcb);

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

