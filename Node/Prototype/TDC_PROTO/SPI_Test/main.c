#include <atmel_start.h>
#include "main.h"

//define pins for on board LED, and TDC enable line
#define BOARD_LED GPIO(GPIO_PORTC, 8)
#define TDC_ENABLE GPIO(GPIO_PORTB, 2)

static int32_t custom_io_rw(struct io_descriptor *const io, uint8_t *inbuf, const uint8_t *const outbuf, const uint16_t length);

int main(void)
{
	struct io_descriptor *io; 
	// data buffers for testing
	//uint16_t *datain = 0;
	//uint16_t *dataout3 = 0xFF01;
	volatile uint32_t tof;

	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	
	spi_m_sync_get_io_descriptor(&SPI_0, &io);
	spi_m_sync_enable(&SPI_0);
	spi_m_sync_set_baudrate(&SPI_0,1000);
	//Mode 3 is leading edge is falling, sample on trailing (rising) edge.
	spi_m_sync_set_mode(&SPI_0,SPI_MODE_0);
	spi_m_sync_set_char_size(&SPI_0,SPI_CHAR_SIZE_8);
	
	gpio_set_pin_level(SPI0_SS, true);
	
	gpio_set_pin_pull_mode(PD20, GPIO_PULL_OFF);
	
	//set up on board led for feedback
	gpio_set_pin_level( BOARD_LED,	false);
	gpio_set_pin_direction(BOARD_LED, GPIO_DIRECTION_OUT);
	gpio_set_pin_function(BOARD_LED, GPIO_PIN_FUNCTION_OFF);
	
	//enable tdc chip, needs clean rising edge some time after power up, fully ready 1.5ms after enable.
	delay_ms(10);
	gpio_set_pin_level(TDC_ENABLE, true);
	delay_ms(10);
	
	tdc_setup(io);

	/* Replace with your application code */
	while (1) {
		
		
		//write START MEAS bit in config 1
		tdc_write(io, 0x41 , 0x01);

		//debug LED
		gpio_toggle_pin_level(BOARD_LED);
		delay_ms(100);
		//tof = tdc_read_8(io, TDC_CONFIG2);
		tof = get_tof(io);
		delay_ms(10);
		
	}
}

		//custom io uses hardware layer to "write" two byes while reading two bytes. Still testing
		//custom_io_rw(io, &datain, &dataout3, 2);
static int32_t custom_io_rw(struct io_descriptor *const io, uint8_t *inbuf, const uint8_t *const outbuf, const uint16_t length)
{
	ASSERT(io);

	struct spi_m_sync_descriptor *spi = CONTAINER_OF(io, struct spi_m_sync_descriptor, io);
	struct spi_xfer               xfer;

	xfer.rxbuf = inbuf;
	xfer.txbuf = (uint8_t *)outbuf;
	xfer.size  = length;

return spi_m_sync_transfer(spi, &xfer);
}


void tdc_setup(struct io_descriptor *const io){
	
	gpio_set_pin_level( TDC_ENABLE,	false);
	gpio_set_pin_direction(TDC_ENABLE, GPIO_DIRECTION_OUT);
	gpio_set_pin_function(TDC_ENABLE, GPIO_PIN_FUNCTION_OFF);  //(func off means gpio)
	gpio_set_pin_level(TDC_ENABLE, false);
	
	//enable tdc chip, needs clean rising edge some time after power up, fully ready 1.5ms after enable.
	gpio_set_pin_level(TDC_ENABLE, true);
	delay_ms(2);
	
	//TDC CONFIG1; MEASE MODE 2
	tdc_write(io, 0x40, 0x02);
	delay_us(5);
	//TDC CONFIG2; CAL PERIODS 40
	tdc_write(io, 0x41, 0xC0);
	delay_us(5);
	//TDC INT MASK; enable new meas interrupt
	tdc_write(io, 0x43, 0x01);
	delay_us(5);
}

//when inputs are set copy constructor to .h file
uint32_t start_tof_meas(struct io_descriptor *const io, const uint8_t trig_pin, const uint8_t outpin){
	//ref datasheet 7.4.6: Measurement Sequence
	//Enable lo to high transition	(happens in setup)
	//request measurement by writing CONFIG1
	//tdc_write()
	//wait for trigger to be enabled
	//set output line to fiber channels high
	//wait for return interrupt
	//call get_tof on measurement
	
	
	return 0;
}
//fetches and calculates time of flight from tdc in picoseconds
uint32_t get_tof(struct io_descriptor *const io ){
	//ref section 7.4.2.2.1 of datasheet
	
	//fetch variables for math
	volatile int time1 = tdc_read_8(io, TDC_TIME1);
	delay_us(5);
	volatile int time2 = tdc_read_8(io, TDC_TIME2);
	delay_us(5);
	volatile int clock_count1 = tdc_read_8(io, TDC_CLOCK_COUNT1);
	delay_us(5);
	volatile int calibration1 = tdc_read_24(io, TDC_CALIBRATION1);
	delay_us(5);
	volatile int calibration2 = tdc_read_24(io, TDC_CALIBRATION2);
	//this is a very small decimal, do the calcs as doubles?
	volatile double clock_period = 1.0 / REF_CLOCK_HZ;
	
	//math
	volatile double cal_count = (calibration2 - calibration1)/(CALIBRATION2_PERIODS - 1.0);
	volatile double normLSB = clock_period / cal_count;
	volatile double tof1 = normLSB*((time1 - time2)) + (clock_count1*clock_period);

	//return value of tof in picoseconds
	volatile  tof_ps = tof1 * 1e12;
	return tof_ps;
}

void tdc_write(struct io_descriptor *const io, uint8_t *const commandbuf, uint8_t *const databuf){
	// need to write 2 bytes, one command one data

	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_write(io, &databuf, 1);
	gpio_set_pin_level(SPI0_SS, true);
	
}

uint8_t tdc_read_8(struct io_descriptor *const io, uint8_t *const commandbuf){
	// need to write command byte and read 3 data bytes
	uint8_t datain = 0;
	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_read(io, &datain, 1);
	gpio_set_pin_level(SPI0_SS, true);
	
	return (uint8_t) datain;
}

uint32_t tdc_read_24(struct io_descriptor *const io, uint8_t *const commandbuf){
	// need to write command byte and read 3 data bytes
	uint32_t datain = 0;
	gpio_set_pin_level(SPI0_SS, false);
	io_write(io, &commandbuf, 1);
	io_read(io, &datain, 3);
	gpio_set_pin_level(SPI0_SS, true);

	return datain;
}


