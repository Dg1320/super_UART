
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:172

00:00:332

1361.6642
5.9612
9802
8405Z17-722h px� 
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
c
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
system_xbar_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2c
asynth_design -top system_xbar_0 -part xc7z007sclg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
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
33151Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:37 . Memory (MB): peak = 2132.402 ; gain = 411.746 ; free physical = 216 ; free virtual = 2308
h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xbar_02
 2}
y/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xbar_0/synth/system_xbar_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_axi_crossbar2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
48718@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
"axi_crossbar_v2_1_32_crossbar_sasd2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
12348@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_addr_decoder2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2-
+generic_baseblocks_v2_1_2_comparator_static2
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
21198@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2%
#generic_baseblocks_v2_1_2_carry_and2
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
608@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
#generic_baseblocks_v2_1_2_carry_and2
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
608@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+generic_baseblocks_v2_1_2_comparator_static2
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
21198@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2=
;generic_baseblocks_v2_1_2_comparator_static__parameterized02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
21198@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2=
;generic_baseblocks_v2_1_2_comparator_static__parameterized02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
21198@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_addr_decoder2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
7908@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!axi_crossbar_v2_1_32_decerr_slave2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
34938@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_decerr_slave2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
34938@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
&axi_crossbar_v2_1_32_addr_arbiter_sasd2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
638@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
&axi_crossbar_v2_1_32_addr_arbiter_sasd2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
638@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
axi_crossbar_v2_1_32_splitter2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
44518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axi_crossbar_v2_1_32_splitter2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
44518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_crossbar_v2_1_32_splitter__parameterized02
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
44518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_crossbar_v2_1_32_splitter__parameterized02
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
44518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!generic_baseblocks_v2_1_2_mux_enc2
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!generic_baseblocks_v2_1_2_mux_enc2
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized02
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized02
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized12
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized12
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
.axi_register_slice_v2_1_31_axic_register_slice2
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
.axi_register_slice_v2_1_31_axic_register_slice2
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized22
 2�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1generic_baseblocks_v2_1_2_mux_enc__parameterized22
 2
02
12�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v2
24368@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
"axi_crossbar_v2_1_32_crossbar_sasd2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
12348@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!axi_crossbar_v2_1_32_axi_crossbar2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
48718@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xbar_02
 2
02
12}
y/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xbar_0/synth/system_xbar_0.v2
538@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2.
,gen_debug_trans_seq.debug_aw_trans_seq_i_reg2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
20518@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2.
,gen_debug_trans_seq.debug_ar_trans_seq_i_reg2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
20628@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2,
*gen_debug_trans_seq.debug_w_beat_cnt_i_reg2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
20738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2,
*gen_debug_trans_seq.debug_r_beat_cnt_i_reg2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v2
20868@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S[0]23
1generic_baseblocks_v2_1_2_mux_enc__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[0]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WLAST2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARID[0]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[7]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[6]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[5]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[4]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[3]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[2]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[1]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARLEN[0]2#
!axi_crossbar_v2_1_32_decerr_slaveZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[1]2#
!axi_crossbar_v2_1_32_addr_decoderZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[0]2#
!axi_crossbar_v2_1_32_addr_decoderZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWID[0]2$
"axi_crossbar_v2_1_32_crossbar_sasdZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARID[0]2$
"axi_crossbar_v2_1_32_crossbar_sasdZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_BID[1]2$
"axi_crossbar_v2_1_32_crossbar_sasdZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_BID[0]2$
"axi_crossbar_v2_1_32_crossbar_sasdZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_RID[1]2$
"axi_crossbar_v2_1_32_crossbar_sasdZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_AXI_RID[0]2$
"axi_crossbar_v2_1_32_crossbar_sasdZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awid[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[7]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[6]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[5]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[4]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awsize[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awsize[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awsize[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awburst[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awburst[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlock[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awqos[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awqos[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awqos[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awqos[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awuser[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wlast[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wuser[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arid[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[7]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[6]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[5]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[4]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlen[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arsize[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arsize[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arsize[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arburst[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arburst[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arlock[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arcache[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arcache[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arcache[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arcache[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arqos[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arqos[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arqos[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_arqos[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_aruser[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_rid[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_rid[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_rlast[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_rlast[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_ruser[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_ruser[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:20 ; elapsed = 00:01:00 . Memory (MB): peak = 2327.340 ; gain = 606.684 ; free physical = 244 ; free virtual = 1725
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:01:00 . Memory (MB): peak = 2327.340 ; gain = 606.684 ; free physical = 244 ; free virtual = 1725
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:20 ; elapsed = 00:01:00 . Memory (MB): peak = 2327.340 ; gain = 606.684 ; free physical = 244 ; free virtual = 1725
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
00:00:00.022
00:00:00.012

2327.3402
0.0002
2442
1727Z17-722h px� 
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
848*designutils2}
y/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc2
inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2}
y/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc2
inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2h
d/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_xbar_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2h
d/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_xbar_0_synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2433.1842
0.0002
2122
1706Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.052
00:00:00.092

2433.1842
0.0002
2122
1706Z17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:33 ; elapsed = 00:01:23 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 153 ; free virtual = 1631
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:33 ; elapsed = 00:01:23 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 153 ; free virtual = 1631
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:01:23 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 153 ; free virtual = 1631
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:33 ; elapsed = 00:01:24 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 152 ; free virtual = 1634
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
.	               64 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               36 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
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
.	                1 Bit    Registers := 14    
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
,	   2 Input   64 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   36 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 30    
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
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys26
4gen_sasd.crossbar_sasd_0/reg_slice_r/m_payload_i_reg2
362
352�
�/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awid[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[7]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[6]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[5]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[4]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlen[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awsize[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awsize[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awsize[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awburst[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awburst[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awlock[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[3]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[2]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[1]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awcache[0]2#
!axi_crossbar_v2_1_32_axi_crossbarZ8-7129h px� 
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:01:28 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 258 ; free virtual = 1674
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:48 ; elapsed = 00:01:49 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 1531 ; free virtual = 3049
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
�Finished Timing Optimization : Time (s): cpu = 00:00:49 ; elapsed = 00:01:50 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 1845 ; free virtual = 3364
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
�Finished Technology Mapping : Time (s): cpu = 00:00:49 ; elapsed = 00:01:51 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 1844 ; free virtual = 3365
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
�Finished IO Insertion : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2388 ; free virtual = 3961
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2388 ; free virtual = 3961
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2408 ; free virtual = 3981
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2408 ; free virtual = 3981
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2408 ; free virtual = 3981
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2408 ; free virtual = 3981
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
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |LUT1 |     1|
h px� 
0
%s*synth2
|2     |LUT2 |     8|
h px� 
0
%s*synth2
|3     |LUT3 |     3|
h px� 
0
%s*synth2
|4     |LUT4 |    48|
h px� 
0
%s*synth2
|5     |LUT5 |    20|
h px� 
0
%s*synth2
|6     |LUT6 |    54|
h px� 
0
%s*synth2
|7     |FDRE |   130|
h px� 
0
%s*synth2
+------+-----+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:56 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.184 ; gain = 712.527 ; free physical = 2407 ; free virtual = 3981
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
GSynthesis finished with 0 errors, 0 critical warnings and 62 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:53 ; elapsed = 00:01:56 . Memory (MB): peak = 2433.184 ; gain = 606.684 ; free physical = 2403 ; free virtual = 3976
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:57 ; elapsed = 00:02:01 . Memory (MB): peak = 2433.191 ; gain = 712.527 ; free physical = 2403 ; free virtual = 3976
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
00:00:00.012
00:00:00.012

2433.1912
0.0002
23922
3965Z17-722h px� 
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

2433.1912
0.0002
52492
6825Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

5720dde0Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532
1052
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

00:01:102

00:02:152

2433.1912

1047.7462
52492
6825Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1738.001; main = 1445.820; forked = 320.799Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3494.785; main = 2433.188; forked = 1061.598Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2457.1952
0.0002
52492
6825Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2i
g/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_xbar_0_synth_1/system_xbar_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
system_xbar_02
1f4ecd1fc294b533Z2-1648h px� 
>
Renamed %s cell refs.
330*coretcl2
7Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2457.1952
0.0002
52552
6831Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2i
g/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_xbar_0_synth_1/system_xbar_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2e
creport_utilization -file system_xbar_0_utilization_synth.rpt -pb system_xbar_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Nov 25 21:00:42 2024Z17-206h px� 


End Record