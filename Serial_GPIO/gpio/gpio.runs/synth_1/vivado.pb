
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:082

00:00:082

1420.0662
0.0232
57892
12759Z17-722h px� 
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
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/utils_1/imports/synth_1/gpio_system_top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2m
k/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/utils_1/imports/synth_1/gpio_system_top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
k
Command: %s
53*	vivadotcl2:
8synth_design -top gpio_system_top -part xc7z007sclg400-1Z4-113h px� 
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

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
70253Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2141.023 ; gain = 413.715 ; free physical = 4784 ; free virtual = 11747
h px� 
�
.identifier '%s' is used before its declaration4750*oasys2	
rx_intr2d
`/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/sources_1/new/gpio_system_top.sv2
938@Z8-6901h px� 
�
synthesizing module '%s'%s4497*oasys2
gpio_system_top2
 2d
`/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/sources_1/new/gpio_system_top.sv2
108@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_wrapper2
 2k
g/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/hdl/system_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system2
 2e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
6108@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_gpio_0_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_gpio_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_gpio_0_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_gpio_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
intr2
system_gpio_0_02
gpio_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8158@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
gpio_02
system_gpio_0_02
252
242e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8158@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_proc_sys_reset_0_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_proc_sys_reset_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_proc_sys_reset_0_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_proc_sys_reset_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

mb_reset2
system_proc_sys_reset_0_02
proc_sys_reset_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8408@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
bus_struct_reset2
system_proc_sys_reset_0_02
proc_sys_reset_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8408@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2
system_proc_sys_reset_0_02
proc_sys_reset_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8408@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2
system_proc_sys_reset_0_02
proc_sys_reset_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8408@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
proc_sys_reset_02
system_proc_sys_reset_0_02
102
62e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8408@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_processing_system7_0_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_processing_system7_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_processing_system7_0_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_processing_system7_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
USB0_PORT_INDCTL2
system_processing_system7_0_02
processing_system7_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8478@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
USB0_VBUS_PWRSELECT2
system_processing_system7_0_02
processing_system7_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8478@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	FCLK_CLK12
system_processing_system7_0_02
processing_system7_02e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8478@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
processing_system7_02
system_processing_system7_0_02
672
642e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
8478@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_ps7_0_axi_periph_02
 2e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
10378@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
m00_couplers_imp_1H7AUOX2
 2e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m00_couplers_imp_1H7AUOX2
 2
02
12e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m01_couplers_imp_4Y7TYO2
 2e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
1598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m01_couplers_imp_4Y7TYO2
 2
02
12e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
1598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_11SE3QO2
 2e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
3058@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_auto_pc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_auto_pc_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_11SE3QO2
 2
02
12e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
3058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xbar_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_xbar_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xbar_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_xbar_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_ps7_0_axi_periph_02
 2
02
12e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
10378@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_serial_0_102
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_serial_0_10_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_serial_0_102
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/.Xil/Vivado-70195-clutch13/realtime/system_serial_0_10_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xlconcat_0_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xlconcat_0_0/synth/system_xlconcat_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xlconcat_v2_1_6_xlconcat2
 2
{/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v2
598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xlconcat_v2_1_6_xlconcat2
 2
02
12
{/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v2
598@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xlconcat_0_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xlconcat_0_0/synth/system_xlconcat_0_0.v2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system2
 2
02
12e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
6108@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_wrapper2
 2
02
12k
g/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/hdl/system_wrapper.v2
138@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gpio_system_top2
 2
02
12d
`/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/sources_1/new/gpio_system_top.sv2
108@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
intr2
system2e
a/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/synth/system.v2
6768@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rx_in2
gpio_system_top2d
`/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/sources_1/new/gpio_system_top.sv2
1058@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
gpio_data_in2
gpio_system_top2d
`/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/sources_1/new/gpio_system_top.sv2
818@Z8-3848h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB0[2]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB0[0]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB1[2]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB1[0]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[3]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[2]2
1Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[1]2
1Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[0]2
1Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[3]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[2]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[1]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[0]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
PDM_SPEAKER2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
PDM_MIC_CLK2
0Z8-3917h px� 
x
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
ESP32_UART1_TXD2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

IMU_SCLK2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
IMU_SDI2
0Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
	IMU_CS_AG2
1Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

IMU_CS_M2
1Z8-3917h px� 
s
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

IMU_DEN_AG2
0Z8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In3[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In4[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In5[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In6[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In7[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In8[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In9[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In10[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In11[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In12[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In13[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In14[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In15[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In16[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In17[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In18[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In19[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In20[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In21[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In22[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In23[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In24[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In25[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In26[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In27[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In28[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In29[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In30[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In31[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In32[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In33[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In34[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In35[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In36[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In37[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In38[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In39[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In40[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In41[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In42[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In43[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In44[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In45[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In46[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In47[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In48[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In49[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In50[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In51[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In52[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In53[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In54[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In55[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In56[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In57[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In58[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In59[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In60[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In61[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In62[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In63[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In64[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In65[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In66[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In67[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In68[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In69[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In70[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In71[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In72[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In73[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In74[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In75[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In76[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In77[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In78[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In79[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In80[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In81[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In82[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In83[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In84[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In85[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In86[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In87[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In88[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In89[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In90[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In91[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In92[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In93[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In94[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In95[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In96[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In97[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In98[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In99[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

In100[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

In101[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

In102[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2223.992 ; gain = 496.684 ; free physical = 4716 ; free virtual = 11678
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2235.867 ; gain = 508.559 ; free physical = 4716 ; free virtual = 11677
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2235.867 ; gain = 508.559 ; free physical = 4716 ; free virtual = 11677
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
00:00:00.012

2235.8672
0.0002
47122
11677Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0/system_processing_system7_0_0_in_context.xdc2(
$system/system_i/processing_system7_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0/system_processing_system7_0_0_in_context.xdc2(
$system/system_i/processing_system7_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_in_context.xdc2$
 system/system_i/proc_sys_reset_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_in_context.xdc2$
 system/system_i/proc_sys_reset_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_gpio_0_0/system_gpio_0_0/system_gpio_0_0_in_context.xdc2
system/system_i/gpio_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_gpio_0_0/system_gpio_0_0/system_gpio_0_0_in_context.xdc2
system/system_i/gpio_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0/system_xbar_0_in_context.xdc2)
%system/system_i/ps7_0_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0/system_xbar_0_in_context.xdc2)
%system/system_i/ps7_0_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0/system_auto_pc_0_in_context.xdc29
5system/system_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0/system_auto_pc_0_in_context.xdc29
5system/system_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_serial_0_10/system_serial_0_10/system_serial_0_10_in_context.xdc2
system/system_i/serial_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_serial_0_10/system_serial_0_10/system_serial_0_10_in_context.xdc2
system/system_i/serial_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2`
\/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/constrs_1/new/blackboard.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2`
\/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/constrs_1/new/blackboard.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2^
\/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/constrs_1/new/blackboard.xdc2#
!.Xil/gpio_system_top_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2_
[/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/constrs_1/new/pb_pullup.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2_
[/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.srcs/constrs_1/new/pb_pullup.xdc8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2Z
V/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2Z
V/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2340.8202
0.0002
46992
11660Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012

00:00:002

2340.8202
0.0002
46992
11660Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4715 ; free virtual = 11659
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4715 ; free virtual = 11659
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4708 ; free virtual = 11658
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4701 ; free virtual = 11659
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
,	   4 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
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
o
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
LED[6]2
0Z8-3917h px� 
o
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
LED[5]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB0[2]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB0[0]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB1[2]2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
RGB1[0]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[3]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[2]2
1Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[1]2
1Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_ANODE[0]2
1Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_CATHODE[7]2
1Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
SS_CATHODE[1]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[3]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[2]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[1]2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

SERVO[0]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
PDM_SPEAKER2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
PDM_MIC_CLK2
0Z8-3917h px� 
x
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
ESP32_UART1_TXD2
0Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

IMU_SCLK2
0Z8-3917h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2	
IMU_SDI2
0Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2
	IMU_CS_AG2
1Z8-3917h px� 
q
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

IMU_CS_M2
1Z8-3917h px� 
s
+design %s has port %s driven by constant %s3447*oasys2
gpio_system_top2

IMU_DEN_AG2
0Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4691 ; free virtual = 11656
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4699 ; free virtual = 11664
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
�Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4699 ; free virtual = 11664
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
�Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4699 ; free virtual = 11664
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
�Finished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
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
M
%s
*synth25
3+------+------------------------------+----------+
h p
x
� 
M
%s
*synth25
3|      |BlackBox name                 |Instances |
h p
x
� 
M
%s
*synth25
3+------+------------------------------+----------+
h p
x
� 
M
%s
*synth25
3|1     |system_gpio_0_0               |         1|
h p
x
� 
M
%s
*synth25
3|2     |system_proc_sys_reset_0_0     |         1|
h p
x
� 
M
%s
*synth25
3|3     |system_processing_system7_0_0 |         1|
h p
x
� 
M
%s
*synth25
3|4     |system_xbar_0                 |         1|
h p
x
� 
M
%s
*synth25
3|5     |system_auto_pc_0              |         1|
h p
x
� 
M
%s
*synth25
3|6     |system_serial_0_10            |         1|
h p
x
� 
M
%s
*synth25
3+------+------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
G
%s*synth2/
-+------+----------------------------+------+
h px� 
G
%s*synth2/
-|      |Cell                        |Count |
h px� 
G
%s*synth2/
-+------+----------------------------+------+
h px� 
G
%s*synth2/
-|1     |system_auto_pc              |     1|
h px� 
G
%s*synth2/
-|2     |system_gpio_0               |     1|
h px� 
G
%s*synth2/
-|3     |system_proc_sys_reset_0     |     1|
h px� 
G
%s*synth2/
-|4     |system_processing_system7_0 |     1|
h px� 
G
%s*synth2/
-|5     |system_serial_0             |     1|
h px� 
G
%s*synth2/
-|6     |system_xbar                 |     1|
h px� 
G
%s*synth2/
-|7     |LUT1                        |     1|
h px� 
G
%s*synth2/
-|8     |LUT2                        |     4|
h px� 
G
%s*synth2/
-|9     |LUT4                        |     5|
h px� 
G
%s*synth2/
-|10    |LUT5                        |     2|
h px� 
G
%s*synth2/
-|11    |IBUF                        |     3|
h px� 
G
%s*synth2/
-|12    |OBUF                        |    42|
h px� 
G
%s*synth2/
-|13    |OBUFT                       |     1|
h px� 
G
%s*synth2/
-+------+----------------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4685 ; free virtual = 11631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 74 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 2340.820 ; gain = 508.559 ; free physical = 4691 ; free virtual = 11640
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2340.820 ; gain = 613.512 ; free physical = 4691 ; free virtual = 11640
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
00:00:00.012

2340.8202
0.0002
49642
11916Z17-722h px� 
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

2340.8202
0.0002
49842
11949Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

94808d84Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
552
1602
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

00:00:372

00:00:342

2340.8202	
920.7542
49842
11948Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1882.402; main = 1542.203; forked = 388.659Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3366.410; main = 2308.809; forked = 1057.602Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2340.8202
0.0002
49802
11948Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2]
[/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/synth_1/gpio_system_top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2i
greport_utilization -file gpio_system_top_utilization_synth.rpt -pb gpio_system_top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Dec  3 19:02:42 2024Z17-206h px� 


End Record