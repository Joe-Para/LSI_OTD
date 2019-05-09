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
#define flag_secConnection		0x2
#define flag_TDCResults			0x4
#define flag_PulseRecvd			0x8
#define flag_TDCTrigger			0x16

#define isrEnable_TDC_LPBK		0x1
#define isrEnable_TDC_INT		0x2
#define isrEnable_TDC_Trigger	0x4


//setting up states
#define state_init				0x1
#define state_wait				0x2
#define state_listening			0x3
#define state_run				0x4


void TDC_Trigger_ISR(void);
void TDC_Interrupt_ISR(void);
void TDC_LPBK_ISR(void);

void secondConnect();
void buttonClicked(uint8_t buttons);

void startRun();
void printTOF(double TOF);


#endif /* MAIN_H_ */

