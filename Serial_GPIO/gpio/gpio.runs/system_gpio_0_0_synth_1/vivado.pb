
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:172

00:00:362

1361.5902
12.8982
7022
8119Z17-722h px� 
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
e
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
system_gpio_0_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2e
csynth_design -top system_gpio_0_0 -part xc7z007sclg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
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
33323Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:26 . Memory (MB): peak = 2123.422 ; gain = 412.746 ; free physical = 210 ; free virtual = 2213
h px� 
�
synthesizing module '%s'%s4497*oasys2
system_gpio_0_02
 2�
}/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_gpio_0_0/synth/system_gpio_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
gpio2
 2o
k/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/385b/hdl/gpio.v2
48@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
gpio_slave_lite_v1_0_AXI2
 2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/385b/hdl/gpio_slave_lite_v1_0_AXI.v2
138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gpio_slave_lite_v1_0_AXI2
 2
02
12�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/385b/hdl/gpio_slave_lite_v1_0_AXI.v2
138@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gpio2
 2
02
12o
k/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/385b/hdl/gpio.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_gpio_0_02
 2
02
12�
}/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ip/system_gpio_0_0/synth/system_gpio_0_0.v2
538@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	waddr_reg2�
/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.gen/sources_1/bd/system/ipshared/385b/hdl/gpio_slave_lite_v1_0_AXI.v2
1758@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[1]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[0]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWPROT[2]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWPROT[1]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWPROT[0]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARPROT[2]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARPROT[1]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARPROT[0]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2214.391 ; gain = 503.715 ; free physical = 203 ; free virtual = 1850
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2232.203 ; gain = 521.527 ; free physical = 203 ; free virtual = 1823
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2232.203 ; gain = 521.527 ; free physical = 203 ; free virtual = 1823
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
00:00:00.032

2232.2032
0.0002
1912
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
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2380.9532
0.0002
1522
1781Z17-722h px� 
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
00:00:00.082

2380.9532
0.0002
1512
1781Z17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:24 ; elapsed = 00:00:55 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 198 ; free virtual = 1702
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:24 ; elapsed = 00:00:55 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 198 ; free virtual = 1702
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:55 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 198 ; free virtual = 1702
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:57 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 168 ; free virtual = 1689
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
.	               32 Bit    Registers := 13    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 6     
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
,	   2 Input   32 Bit        Muxes := 137   
h p
x
� 
F
%s
*synth2.
,	   8 Input   32 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 193   
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[1]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWADDR[0]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWPROT[2]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWPROT[1]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_AWPROT[0]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARPROT[2]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARPROT[1]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_ARPROT[0]2
gpio_slave_lite_v1_0_AXIZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:01:05 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 159 ; free virtual = 1667
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:42 ; elapsed = 00:01:24 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 157 ; free virtual = 1619
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
�Finished Timing Optimization : Time (s): cpu = 00:00:43 ; elapsed = 00:01:24 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 423 ; free virtual = 1879
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
�Finished Technology Mapping : Time (s): cpu = 00:00:43 ; elapsed = 00:01:25 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 431 ; free virtual = 1887
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
�Finished IO Insertion : Time (s): cpu = 00:00:50 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 251 ; free virtual = 1773
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:50 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 251 ; free virtual = 1773
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:51 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 264 ; free virtual = 1787
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:51 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 285 ; free virtual = 1807
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:51 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 395 ; free virtual = 1918
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:51 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 497 ; free virtual = 2019
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
|1     |LUT1  |     1|
h px� 
1
%s*synth2
|2     |LUT2  |     1|
h px� 
1
%s*synth2
|3     |LUT3  |    33|
h px� 
1
%s*synth2
|4     |LUT4  |    22|
h px� 
1
%s*synth2
|5     |LUT5  |    63|
h px� 
1
%s*synth2
|6     |LUT6  |   104|
h px� 
1
%s*synth2
|7     |MUXF7 |    32|
h px� 
1
%s*synth2
|8     |FDRE  |   424|
h px� 
1
%s*synth2
|9     |FDSE  |     1|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:51 ; elapsed = 00:01:36 . Memory (MB): peak = 2380.953 ; gain = 670.277 ; free physical = 580 ; free virtual = 2101
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:48 ; elapsed = 00:01:32 . Memory (MB): peak = 2380.953 ; gain = 521.527 ; free physical = 1531 ; free virtual = 3049
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:51 ; elapsed = 00:01:37 . Memory (MB): peak = 2380.961 ; gain = 670.277 ; free physical = 1531 ; free virtual = 3049
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
00:00:00.022

2380.9612
0.0002
18552
3373Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
32Z29-17h px� 
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

2380.9612
0.0002
21632
3701Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

13f4ab49Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
272
182
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

00:01:052

00:01:592

2380.9612

1000.5592
21612
3694Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1684.975; main = 1334.697; forked = 359.528Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3500.973; main = 2380.957; forked = 1120.016Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2404.9652
0.0002
21632
3697Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2m
k/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_gpio_0_0_synth_1/system_gpio_0_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
system_gpio_0_02
21a6d8f14302ad56Z2-1648h px� 
>
Renamed %s cell refs.
330*coretcl2
2Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2404.9652
0.0002
21762
3715Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2m
k/media/clutch13/SOC/soc_projects/SoC/Serial_GPIO/gpio/gpio.runs/system_gpio_0_0_synth_1/system_gpio_0_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2i
greport_utilization -file system_gpio_0_0_utilization_synth.rpt -pb system_gpio_0_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Nov 25 21:00:35 2024Z17-206h px� 


End Record