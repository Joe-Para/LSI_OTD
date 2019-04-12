/*
 * communications_setup.h
 *
 * Created: 4/12/19 2:05:24 AM
 *  Author: Jacob
 */ 


#ifndef COMMUNICATIONS_SETUP_H_
#define COMMUNICATIONS_SETUP_H_

#define workstationIP_0		192
#define workstationIP_1		168
#define workstationIP_2		0
#define workstationIP_3		18

#include <atmel_start.h>
#include <peripheral_clk_config.h>
#include <lwip/netif.h>
#include <lwip/timers.h>
#include "lwip_demo_config.h"
#include <string.h>
#include <lwip/tcp.h>
#include <lwip/dhcp.h>

void client_close(struct tcp_pcb *TCPpcb);
err_t client_connected(void *arg, struct tcp_pcb *TCPpcb, err_t err);
err_t client_recv(void *arg, struct tcp_pcb *TCPpcb, struct pbuf *p, err_t err);
err_t client_poll(void *arg, struct tcp_pcb *TCPpcb);
err_t client_err(void *arg, err_t err);
err_t client_sent(void *arg, struct tcp_pcb *TCPpcb, u16_t len);
bool compareString(char *string1, char *string2, int string2Len);
void start_ethernet();

void runCommand(char *string);
extern int connectionCount;

#endif /* COMMUNICATIONS_SETUP_H_ */

