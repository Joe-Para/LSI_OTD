/*
 * spi_setup.c
 *
 * Created: 4/12/2019 5:18:40 PM
 *  Author: Joe
 */

#include "spi_setup.h"

//starts the SPI interface on SAME70
void start_spi()
{
		spi_m_sync_get_io_descriptor(&SPI_0, &io);
		spi_m_sync_enable(&SPI_0);
		//this doesnt seem to change much
		spi_m_sync_set_baudrate(&SPI_0,1000);
		//Mode 3 is leading edge is falling, sample on trailing (rising) edge.
		spi_m_sync_set_mode(&SPI_0,SPI_MODE_3);
		spi_m_sync_set_char_size(&SPI_0,SPI_CHAR_SIZE_8);
} 

int32_t spi_custom_io_rw(struct io_descriptor *const io, uint8_t *inbuf, const uint8_t *const outbuf, const uint16_t length)
{
	ASSERT(io);

	struct spi_m_sync_descriptor *spi = CONTAINER_OF(io, struct spi_m_sync_descriptor, io);
	struct spi_xfer               xfer;

	xfer.rxbuf = inbuf;
	xfer.txbuf = (uint8_t *)outbuf;
	xfer.size  = length;

	return spi_m_sync_transfer(spi, &xfer);
}