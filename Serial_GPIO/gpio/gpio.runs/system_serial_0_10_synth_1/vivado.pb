
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:082

00:00:082

1420.0702
0.0232
57622
12729Z17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2E
C/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/ip_repo/serial_1_0Z19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2C
A/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/ip_repo/gpio_1_0Z19-1700h px� 
t
"Loaded Vivado IP repository '%s'.
1332*coregen2+
)/media/clutch13/SOC/Vivado/2024.1/data/ipZ19-2313h px� 
h
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
system_serial_0_10Z19-6924h px� 
�
Command: %s
53*	vivadotcl2h
fsynth_design -top system_serial_0_10 -part xc7z007sclg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7z007sZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7z007sZ17-349h px� 
E
Loading part %s157*device2
xc7z007sclg400-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7z007sclg400-1Z21-9227h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
69918Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2123.059 ; gain = 412.746 ; free physical = 4680 ; free virtual = 11648
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
write_request2
wire2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
238@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
read_request2
wire2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
248@Z8-11241h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
write_request2
232s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
268@Z8-8895h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
read_request2
242s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
278@Z8-8895h px� 
�
synthesizing module '%s'%s4497*oasys2
system_serial_0_102
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_serial_0_10/synth/system_serial_0_10.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
serial2
 2q
m/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial.v2
48@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
serial_v1_0_AXI2
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
118@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
baudRateDivider2
 2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/baudRateDivider.sv2
218@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
baudRateDivider2
 2
02
12w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/baudRateDivider.sv2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
transmitter2
 2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
edge_detect2
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
6038@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
edge_detect2
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
6038@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
1358@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
transmitter2
 2
02
12w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

my9x16Fifo2
 2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

my9x16Fifo2
 2
02
12s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
18@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
wr_data2
92

my9x16Fifo2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
4688@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2

receiver2
 2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
218@Z8-6157h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
888@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
888@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
888@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
898@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
898@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
898@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
908@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
908@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
908@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
918@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
918@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
1348@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
1718@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
1888@Z8-324h px� 
�
index %s out of range324*oasys2
22t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
2268@Z8-324h px� 
�
-case statement is not full and has no default155*oasys2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
1038@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

receiver2
 2
02
12t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
218@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

secondStop2

receiver2

myReceiver2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
4958@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

myReceiver2

receiver2
132
122�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
4958@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
serial_v1_0_AXI2
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
118@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
serial2
 2
02
12q
m/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_serial_0_102
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_serial_0_10/synth/system_serial_0_10.v2
538@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
testIdle_reg2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
1428@Z8-6014h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
latchData_reg2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
1178@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2

mySize_reg2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
1238@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myParityBit2
transmitter2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
948@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[15]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[14]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[13]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[12]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[11]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[10]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[9]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[8]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[7]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[6]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[5]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[4]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[3]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[2]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[1]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
myFIFO_DATA[0]2

my9x16Fifo2s
o/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/my9x16_FIFO.sv2
188@Z8-3848h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2

mySize_reg2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
528@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
determinedBit_reg2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
848@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
rxParityCheck_reg2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
2658@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
TX_INTERRUPT_STATUS2
serial_v1_0_AXI2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
1428@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
sendRxInterrupt2
serial_v1_0_AXI2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
5408@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
txBaud2
serial_v1_0_AXI2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
288@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

baudTick2
serial_v1_0_AXI2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
298@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
tx_intr2
serial_v1_0_AXI2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
318@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
status_DEBUG_OUT2
serial_v1_0_AXI2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/hdl/serial_slave_lite_v1_0_AXI.v2
1438@Z8-3848h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][8]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][7]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][6]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][5]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][4]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][3]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][2]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][1]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[15][0]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][8]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][7]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][6]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][5]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][4]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][3]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][2]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][1]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[14][0]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][8]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][7]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][6]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][5]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][4]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][3]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][2]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][1]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[13][0]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][8]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][7]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][6]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][5]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][4]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][3]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][2]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][1]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[12][0]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][8]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][7]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][6]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][5]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][4]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][3]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][2]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][1]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[11][0]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][8]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][7]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][6]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][5]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][4]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][3]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][2]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][1]2

my9x16FifoZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[10][0]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][8]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][7]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][6]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][5]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][4]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][3]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][2]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][1]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[9][0]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][8]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][7]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][6]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][5]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][4]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][3]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][2]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][1]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[8][0]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][8]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][7]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][6]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][5]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][4]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][3]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][2]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][1]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[7][0]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][8]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][7]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][6]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][5]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][4]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][3]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][2]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][1]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[6][0]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][8]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][7]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][6]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][5]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][4]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][3]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][2]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][1]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[5][0]2

my9x16FifoZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
myFIFO_DATA[4][8]2

my9x16FifoZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2211.996 ; gain = 501.684 ; free physical = 4576 ; free virtual = 11541
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2226.840 ; gain = 516.527 ; free physical = 4566 ; free virtual = 11515
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2226.840 ; gain = 516.527 ; free physical = 4566 ; free virtual = 11515
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.022

2226.8402
0.0002
45642
11514Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2375.5902
0.0002
46062
11573Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.062
00:00:00.032

2375.5902
0.0002
46032
11572Z17-722h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4602 ; free virtual = 11558
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7z007sclg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4602 ; free virtual = 11558
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4602 ; free virtual = 11558
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
txState_reg2
transmitterZ8-802h px� 
n
3inferred FSM for state register '%s' in module '%s'802*oasys2
rxState_reg2

receiverZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 TX_IDLE |                              000 |                             0000
h p
x
� 
y
%s
*synth2a
_               TX_PARITY |                              001 |                             0011
h p
x
� 
y
%s
*synth2a
_                 TX_DATA |                              010 |                             0010
h p
x
� 
y
%s
*synth2a
_                TX_STOP1 |                              011 |                             0100
h p
x
� 
y
%s
*synth2a
_                TX_STOP2 |                              100 |                             0101
h p
x
� 
y
%s
*synth2a
_                TX_START |                              101 |                             0001
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
txState_reg2

sequential2
transmitterZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2

mySize_reg2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
1238@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
latchData_reg2w
s/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/transmitter.sv2
1178@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 RX_IDLE |                           000001 |                              000
h p
x
� 
y
%s
*synth2a
_                RX_START |                           000010 |                              001
h p
x
� 
y
%s
*synth2a
_                 RX_DATA |                           000100 |                              010
h p
x
� 
y
%s
*synth2a
_               RX_PARITY |                           001000 |                              011
h p
x
� 
y
%s
*synth2a
_                RX_STOP1 |                           010000 |                              100
h p
x
� 
y
%s
*synth2a
_                RX_STOP2 |                           100000 |                              101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
rxState_reg2	
one-hot2

receiverZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2

mySize_reg2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
528@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
determinedBit_reg2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
848@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
rxParityCheck_reg2t
p/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/09f4/src/receiver.sv2
2658@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4580 ; free virtual = 11534
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 3     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 33    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 34    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 107   
h p
x
� 
F
%s
*synth2.
,	   6 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  19 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  65 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 119   
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 18    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 66 (col length:40)
BRAMs: 100 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[3]2
transmitterZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[2]2
transmitterZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[1]2
transmitterZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[0]2
transmitterZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[3]2

receiverZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[2]2

receiverZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[1]2

receiverZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mySize_reg[0]2

receiverZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4558 ; free virtual = 11522
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4537 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4534 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4538 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4534 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4534 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4534 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4534 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4531 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4531 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |   247|
h px� 
2
%s*synth2
|2     |LUT1   |    99|
h px� 
2
%s*synth2
|3     |LUT2   |   124|
h px� 
2
%s*synth2
|4     |LUT3   |   724|
h px� 
2
%s*synth2
|5     |LUT4   |   368|
h px� 
2
%s*synth2
|6     |LUT5   |    37|
h px� 
2
%s*synth2
|7     |LUT6   |   206|
h px� 
2
%s*synth2
|8     |FDRE   |   578|
h px� 
2
%s*synth2
|9     |FDSE   |     2|
h px� 
2
%s*synth2
|10    |LD     |    10|
h px� 
2
%s*synth2
|11    |LDCP   |     1|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.590 ; gain = 665.277 ; free physical = 4531 ; free virtual = 11492
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 168 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 2375.590 ; gain = 516.527 ; free physical = 4531 ; free virtual = 11492
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 2375.598 ; gain = 665.277 ; free physical = 4531 ; free virtual = 11492
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.022
00:00:00.022

2375.5982
0.0002
49262
11875Z17-722h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
258Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2375.5982
0.0002
49352
11896Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
~  A total of 11 instances were transformed.
  LD => LDCE: 10 instances
  LDCP => LDCP (GND, LDCE, LUT3(x2), VCC): 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ebfd3d0fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
462
1632
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:432

00:00:392

2375.5982	
955.5272
49322
11896Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1984.056; main = 1548.484; forked = 482.275Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3496.578; main = 2375.594; forked = 1120.984Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.022
00:00:00.012

2399.6022
0.0002
49312
11895Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2s
q/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_serial_0_10_synth_1/system_serial_0_10.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
system_serial_0_102
d813ffd67d791460Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
15Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.022
00:00:00.012

2399.6022
0.0002
48942
11853Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2s
q/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_serial_0_10_synth_1/system_serial_0_10.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2o
mreport_utilization -file system_serial_0_10_utilization_synth.rpt -pb system_serial_0_10_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Dec  3 19:01:50 2024Z17-206h px� 


End Record