/*
 * i2c_setup.c
 *
 * Created: 4/15/2019 11:48:37 AM
 *  Author: Joe
 */ 


#include "i2c_setup.h"

//i just copy pasted this from the existing i2c stuff, i don't think we even need a setup
void start_i2c(void){
	uint8_t addr = 0x9A;

	i2c_m_sync_enable(&I2C_AT24MAC);
	i2c_m_sync_set_slaveaddr(&I2C_AT24MAC, CONF_AT24MAC_ADDRESS, I2C_M_SEVEN);
	io_write(&(I2C_AT24MAC.io), &addr, 1);
	io_read(&(I2C_AT24MAC.io), mac, 6);
}



/// this is where i'd like to put in the code for the display and SFP connector

