# SoC


Using UART

0) cd /C/serial_driver

1) sudo insmod comboDriver.c

2) ./myBaudSettings         to setup baud 115200 8N1

3) type in the FTDI to see result

4) to read from the software fifo cat /sys/serial/BaudSettings/rx_data

5) to change any of the settings echo "COMMAND" > FILE
