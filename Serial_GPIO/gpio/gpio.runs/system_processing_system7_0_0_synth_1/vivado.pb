
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:172

00:00:372

1418.0982
0.0232
6352
8052Z17-722h px� 
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
53*	vivadotcl2s
qsynth_design -top system_processing_system7_0_0 -part xc7z007sclg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
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
33357Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:27 . Memory (MB): peak = 2129.055 ; gain = 412.746 ; free physical = 225 ; free virtual = 2117
h px� 
�
synthesizing module '%s'%s4497*oasys2
system_processing_system7_0_02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
*processing_system7_v5_5_processing_system72
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2
1528@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2
 2C
?/media/clutch13/SOC/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
19518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2
 2
02
12C
?/media/clutch13/SOC/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
19518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BIBUF2
 2C
?/media/clutch13/SOC/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
15988@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BIBUF2
 2
02
12C
?/media/clutch13/SOC/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
15988@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PS72
 2C
?/media/clutch13/SOC/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1152588@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PS72
 2
02
12C
?/media/clutch13/SOC/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1152588@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
*processing_system7_v5_5_processing_system72
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2
1528@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_GP0_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_GP1_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_GP0_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_GP1_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_ACP_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP1_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP2_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP3_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA0_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA1_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA2_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA3_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
inst2,
*processing_system7_v5_5_processing_system72
6852
6722�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
3318@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_processing_system7_0_02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2
538@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_COL2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_CRS2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RX_DV2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RX_ER2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[7]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[6]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[5]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[4]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[3]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[1]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[0]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_COL2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_CRS2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RX_DV2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RX_ER2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[7]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[6]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[5]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[4]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[3]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[1]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[0]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_GP0_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_GP0_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_GP1_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_GP1_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ACP_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ACP_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP0_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP0_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP1_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP1_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP2_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP2_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP3_ARSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_HP3_AWSIZE[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FCLK_CLKTRIG3_N2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FCLK_CLKTRIG2_N2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FCLK_CLKTRIG1_N2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FCLK_CLKTRIG0_N2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[31]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[30]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[29]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[28]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[27]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[26]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[25]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[24]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[23]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[22]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[21]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[20]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[19]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[18]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[17]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[16]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[15]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[14]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[13]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[12]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[11]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[10]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[9]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[8]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[7]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[6]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[5]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[4]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[3]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[1]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_DATA[0]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_VALID2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_ATID[3]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_ATID[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_ATID[1]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
FTMD_TRACEIN_ATID[0]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:35 . Memory (MB): peak = 2214.023 ; gain = 497.715 ; free physical = 206 ; free virtual = 1854
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:35 . Memory (MB): peak = 2228.867 ; gain = 512.559 ; free physical = 203 ; free virtual = 1850
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:35 . Memory (MB): peak = 2228.867 ; gain = 512.559 ; free physical = 203 ; free virtual = 1850
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
00:00:00.052

2234.8052
0.0002
1902
1810Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc2
inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc2
inst	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc21
/.Xil/system_processing_system7_0_0_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2x
t/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_processing_system7_0_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2x
t/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_processing_system7_0_0_synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2330.8522
0.0002
1702
1757Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.042
00:00:00.092

2330.8522
0.0002
1662
1753Z17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:24 ; elapsed = 00:00:59 . Memory (MB): peak = 2330.852 ; gain = 614.543 ; free physical = 166 ; free virtual = 1677
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:24 ; elapsed = 00:00:59 . Memory (MB): peak = 2330.852 ; gain = 614.543 ; free physical = 166 ; free virtual = 1677
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:01:00 . Memory (MB): peak = 2330.852 ; gain = 614.543 ; free physical = 166 ; free virtual = 1675
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:01:02 . Memory (MB): peak = 2330.852 ; gain = 614.543 ; free physical = 165 ; free virtual = 1678
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_COL2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_CRS2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RX_DV2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RX_ER2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[7]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[6]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[5]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[4]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[3]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[2]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[1]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET0_GMII_RXD[0]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_COL2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_CRS2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RX_DV2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RX_ER2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[7]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[6]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[5]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[4]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ENET1_GMII_RXD[3]2,
*processing_system7_v5_5_processing_system7Z8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:01:05 . Memory (MB): peak = 2330.852 ; gain = 614.543 ; free physical = 159 ; free virtual = 1668
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:41 ; elapsed = 00:01:29 . Memory (MB): peak = 2373.836 ; gain = 657.527 ; free physical = 322 ; free virtual = 1804
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
�Finished Timing Optimization : Time (s): cpu = 00:00:41 ; elapsed = 00:01:29 . Memory (MB): peak = 2393.844 ; gain = 677.535 ; free physical = 316 ; free virtual = 1798
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
�Finished Technology Mapping : Time (s): cpu = 00:00:41 ; elapsed = 00:01:30 . Memory (MB): peak = 2401.852 ; gain = 685.543 ; free physical = 308 ; free virtual = 1787
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
�Finished IO Insertion : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2153 ; free virtual = 3730
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2151 ; free virtual = 3728
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2147 ; free virtual = 3724
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2147 ; free virtual = 3724
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2143 ; free virtual = 3720
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2143 ; free virtual = 3720
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
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|      |Cell  |Count |
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|1     |BIBUF |   130|
h px� 
1
%s*synth2
|2     |BUFG  |     2|
h px� 
1
%s*synth2
|3     |LUT1  |    24|
h px� 
1
%s*synth2
|4     |PS7   |     1|
h px� 
1
%s*synth2
+------+------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:49 ; elapsed = 00:01:43 . Memory (MB): peak = 2409.789 ; gain = 693.480 ; free physical = 2143 ; free virtual = 3720
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
GSynthesis finished with 0 errors, 0 critical warnings and 80 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:45 ; elapsed = 00:01:36 . Memory (MB): peak = 2409.789 ; gain = 591.496 ; free physical = 2141 ; free virtual = 3714
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:49 ; elapsed = 00:01:44 . Memory (MB): peak = 2409.797 ; gain = 693.480 ; free physical = 2141 ; free virtual = 3714
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

2409.7972
0.0002
21512
3727Z17-722h px� 
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

2412.7582
0.0002
23852
3955Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

d2abae99Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302
1152
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

00:01:032

00:02:042

2412.7582	
994.6602
23752
3946Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1750.052; main = 1431.182; forked = 323.136Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3463.453; main = 2412.762; forked = 1061.598Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.032
00:00:00.012

2412.7582
0.0002
23752
3947Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_processing_system7_0_0_synth_1/system_processing_system7_0_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2�
�report_utilization -file system_processing_system7_0_0_utilization_synth.rpt -pb system_processing_system7_0_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Nov 25 21:00:39 2024Z17-206h px� 


End Record