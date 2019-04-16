/*
 * main.h
 *
 * Created: 4/16/19 2:30:55 AM
 *  Author: Jacob
 */ 


#ifndef MAIN_H_
#define MAIN_H_

//setting up types of flags
#define flag_EthernetActivity	0x1
#define flag_TDCResults			0x2
#define flag_PulseRecved		0x4


//setting up states
#define state_init				0x1
#define state_wait				0x2
#define state_listening			0x3
#define state_run				0x4


void TCD_Trigger_ISR(void);
void TDC_Interrupt_ISR(void);
void TDC_LPBK_ISR(void);






//saved code for later 
//struct tcp_pcb *tempPCB;
//struct ip_addr dest;
//IP4_ADDR(&dest, workstationIP_0, workstationIP_1, workstationIP_2, workstationIP_3);
//tempPCB = tcp_new();
//tcp_arg(tempPCB, NULL);
//tcp_connect(tempPCB, &dest, SC_PORT, client_connected);
//
//while (connectionCount != 2) {
	//
	//ethernetif_mac_input(&LWIP_MACIF_desc);
	//
	///* LWIP timers - ARP, DHCP, TCP, etc. */
	//sys_check_timeouts();
//}
//
//client_close(tempPCB);


#endif /* MAIN_H_ */