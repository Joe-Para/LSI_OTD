=====================
LwIP Raw Data Example
=====================

The LwIP Raw Data example demonstrates the raw data process of LwIP TCP/IP
Stack. The user should connect the board to the network or computer by the
unshielded twisted pair(UTP) cable.

The example sends "Hello ATMEL World!" to the debug console by usart port, and
once the ethernet connection was established, the debug console will print
the static IP address and netmask address. The user can ping the board from
the host computer.

Drivers
-------
* TCPIP Stack
* TCPIP Stack Interface
* Ethernet PHY
* STDIO Redirect
* Ethernet MAC
* USART

Default interface settings
--------------------------
* USART

  * 9600 baud-rate
