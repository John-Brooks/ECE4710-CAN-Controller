
w
Command: %s
53*	vivadotcl2F
2synth_design -top top_level -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 786.152 ; gain = 234.918
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
	top_level2default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
472default:default8@Z8-638h px� 
e
%s
*synth2M
9	Parameter CLOCKS_PER_BIT bound to: 200 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLOCKS_UNTIL_SAMPLE bound to: 160 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
SerialDataProcessor2default:default2x
dC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/SerialDataProcessor.vhd2default:default2
342default:default2
sdp_impl2default:default2'
SerialDataProcessor2default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
1312default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2'
SerialDataProcessor2default:default2z
dC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/SerialDataProcessor.vhd2default:default2
452default:default8@Z8-638h px� 
e
%s
*synth2M
9	Parameter CLOCKS_PER_BIT bound to: 200 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLOCKS_UNTIL_SAMPLE bound to: 160 - type: integer 
2default:defaulth p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
raw2default:default2z
dC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/SerialDataProcessor.vhd2default:default2
682default:default8@Z8-614h px� 
e
%s
*synth2M
9	Parameter CLOCKS_PER_BIT bound to: 200 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLOCKS_UNTIL_SAMPLE bound to: 160 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
bit_sample_clock2default:default2u
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/bit_sample_clock.vhd2default:default2
382default:default2
bsc2default:default2$
bit_sample_clock2default:default2z
dC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/SerialDataProcessor.vhd2default:default2
842default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
bit_sample_clock2default:default2w
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/bit_sample_clock.vhd2default:default2
472default:default8@Z8-638h px� 
e
%s
*synth2M
9	Parameter CLOCKS_PER_BIT bound to: 200 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLOCKS_UNTIL_SAMPLE bound to: 160 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
counter_reg2default:default2w
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/bit_sample_clock.vhd2default:default2
572default:default8@Z8-6014h px� 
�
�Register %s in module %s is clocked by two different clocks in the same process. This may cause simulation mismatches and synthesis errors. Consider using different process statements 
4191*oasys2
z_reg2default:default2$
bit_sample_clock2default:default2w
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/bit_sample_clock.vhd2default:default2
542default:default8@Z8-5787h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
bit_sample_clock2default:default2
12default:default2
12default:default2w
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/bit_sample_clock.vhd2default:default2
472default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
SerialDataProcessor2default:default2
22default:default2
12default:default2z
dC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/SerialDataProcessor.vhd2default:default2
452default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
Top_destuffer2default:default2[
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Top_destuffer.vhd2default:default2
132default:default2
ds_impl2default:default2!
Top_destuffer2default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
1372default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
Top_destuffer2default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Top_destuffer.vhd2default:default2
232default:default8@Z8-638h px� 
X
%s
*synth2@
,	Parameter N bound to: 108 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DIR bound to: LEFT - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	shift_reg2default:default2W
CC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/shift_reg.vhd2default:default2
172default:default2
shiftreg2default:default2
	shift_reg2default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Top_destuffer.vhd2default:default2
612default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	shift_reg2default:default2Y
CC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/shift_reg.vhd2default:default2
282default:default8@Z8-638h px� 
X
%s
*synth2@
,	Parameter N bound to: 108 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter DIR bound to: LEFT - type: string 
2default:defaulth p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
Re_Count2default:default2Y
CC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/shift_reg.vhd2default:default2
462default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	shift_reg2default:default2
32default:default2
12default:default2Y
CC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/shift_reg.vhd2default:default2
282default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
Destuffer_FSM2default:default2[
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Destuffer_FSM.vhd2default:default2
152default:default2
FSM_C2default:default2!
Destuffer_FSM2default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Top_destuffer.vhd2default:default2
632default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
Destuffer_FSM2default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Destuffer_FSM.vhd2default:default2
222default:default8@Z8-638h px� 
X
%s
*synth2@
,	Parameter N bound to: 108 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
counter2default:default2U
AC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/counter.vhd2default:default2
132default:default2
con2default:default2
counter2default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Destuffer_FSM.vhd2default:default2
362default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
counter2default:default2W
AC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/counter.vhd2default:default2
192default:default8@Z8-638h px� 
X
%s
*synth2@
,	Parameter N bound to: 108 - type: integer 
2default:defaulth p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
Re_Count2default:default2W
AC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/counter.vhd2default:default2
222default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
counter2default:default2
42default:default2
12default:default2W
AC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/counter.vhd2default:default2
192default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Destuffer_FSM2default:default2
52default:default2
12default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Destuffer_FSM.vhd2default:default2
222default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
Top_destuffer2default:default2
62default:default2
12default:default2]
GC:/Users/John/source/ECE4710-CAN-Controller/Destuffer/Top_destuffer.vhd2default:default2
232default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CRC_top2default:default2O
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
112default:default2
crc_impl2default:default2
CRC_top2default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
1452default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CRC_top2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
192default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter N bound to: 98 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
my_rege2default:default2O
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/my_rege.vhd2default:default2
142default:default2
preg2default:default2
my_rege2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
832default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
my_rege2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/my_rege.vhd2default:default2
222default:default8@Z8-638h px� 
W
%s
*synth2?
+	Parameter N bound to: 98 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
my_rege2default:default2
72default:default2
12default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/my_rege.vhd2default:default2
222default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg02default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
852default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
\reg 2default:default2M
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
212default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
\reg 2default:default2
82default:default2
12default:default2M
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
212default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg12default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
862default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg22default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
872default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg32default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
882default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg42default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
892default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg52default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
902default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg62default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
912default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg72default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
922default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg82default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
932default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg92default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
942default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg102default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
952default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg112default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
962default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg122default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
972default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg132default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
982default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
ireg142default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
992default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg12default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1012default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg22default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1022default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg32default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1032default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg42default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1042default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg52default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1052default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg62default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1062default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg72default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1072default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg82default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1082default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg92default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1092default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg102default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1102default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg112default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1112default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg122default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1122default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg132default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1132default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg142default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1142default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
reg2default:default2K
7C:/Users/John/source/ECE4710-CAN-Controller/CRC/reg.vhd2default:default2
142default:default2
oreg152default:default2
reg2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1152default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mux2default:default2M
9C:/Users/John/source/ECE4710-CAN-Controller/CRC/mux21.vhd2default:default2
62default:default2
inmux2default:default2
mux2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1302default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
mux2default:default2O
9C:/Users/John/source/ECE4710-CAN-Controller/CRC/mux21.vhd2default:default2
252default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mux2default:default2
92default:default2
12default:default2O
9C:/Users/John/source/ECE4710-CAN-Controller/CRC/mux21.vhd2default:default2
252default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CRC_FSM2default:default2O
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_FSM.vhd2default:default2
152default:default2
fs2default:default2
CRC_FSM2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
1442default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CRC_FSM2default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_FSM.vhd2default:default2
252default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CRC_FSM2default:default2
102default:default2
12default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_FSM.vhd2default:default2
252default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CRC_top2default:default2
112default:default2
12default:default2Q
;C:/Users/John/source/ECE4710-CAN-Controller/CRC/CRC_top.vhd2default:default2
192default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

serializer2default:default2o
[C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/serializer.vhd2default:default2
172default:default2!
sevenseg_impl2default:default2

serializer2default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
1522default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

serializer2default:default2q
[C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/serializer.vhd2default:default2
242default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter COUNT bound to: 100000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
my_genpulse2default:default2p
\C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/my_genpulse.vhd2default:default2
182default:default2
gz2default:default2
my_genpulse2default:default2q
[C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/serializer.vhd2default:default2
282default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
my_genpulse2default:default2r
\C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/my_genpulse.vhd2default:default2
252default:default8@Z8-638h px� 
_
%s
*synth2G
3	Parameter COUNT bound to: 100000 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
my_genpulse2default:default2
122default:default2
12default:default2r
\C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/my_genpulse.vhd2default:default2
252default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
hex2sevenseg2default:default2q
]C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/hex2sevenseg.vhd2default:default2
152default:default2
seg72default:default2 
hex2sevenseg2default:default2q
[C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/serializer.vhd2default:default2
642default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
hex2sevenseg2default:default2s
]C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/hex2sevenseg.vhd2default:default2
202default:default8@Z8-638h px� 
�
default block is never used226*oasys2s
]C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/hex2sevenseg.vhd2default:default2
282default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
hex2sevenseg2default:default2
132default:default2
12default:default2s
]C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/hex2sevenseg.vhd2default:default2
202default:default8@Z8-256h px� 
�
default block is never used226*oasys2q
[C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/serializer.vhd2default:default2
702default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

serializer2default:default2
142default:default2
12default:default2q
[C:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/serializer.vhd2default:default2
242default:default8@Z8-256h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CAN_tx2default:default2
	top_level2default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
392default:default8@Z8-3848h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2default:default2
152default:default2
12default:default2p
ZC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/sources_1/new/top_level.vhd2default:default2
472default:default8@Z8-256h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
	top_level2default:default2 
debug_out[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
	top_level2default:default2 
debug_out[6]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
	top_level2default:default2
SEGS[7]2default:default2
12default:defaultZ8-3917h px� 
~
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
CAN_tx2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 859.738 ; gain = 308.504
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 859.738 ; gain = 308.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 859.738 ; gain = 308.504
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
859.7382default:default2
0.0002default:defaultZ17-268h px� 
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
Parsing XDC File [%s]
179*designutils2w
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/constrs_1/imports/ECE4710/100t.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2w
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/constrs_1/imports/ECE4710/100t.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2u
aC:/Users/John/source/ECE4710-CAN-Controller/CANController.srcs/constrs_1/imports/ECE4710/100t.xdc2default:default2/
.Xil/top_level_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
957.4302default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
957.4302default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 957.430 ; gain = 406.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 957.430 ; gain = 406.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 957.430 ; gain = 406.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
y_reg2default:default2!
Destuffer_FSM2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
y_reg2default:default2
CRC_FSM2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s0 |                       0000000001 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s1_0 |                       0000000010 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s2_0 |                       0000000100 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s3_0 |                       0000001000 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s4_0 |                       0000010000 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s1_1 |                       0000100000 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s2_1 |                       0001000000 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s3_1 |                       0010000000 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s4_1 |                       0100000000 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s5 |                       1000000000 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
y_reg2default:default2
one-hot2default:default2!
Destuffer_FSM2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s1 |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s2 |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                      s3 |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
y_reg2default:default2

sequential2default:default2
CRC_FSM2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 957.430 ; gain = 406.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 8     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               98 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 36    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     98 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
>
%s
*synth2&
Module top_level 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module bit_sample_clock 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
H
%s
*synth20
Module SerialDataProcessor 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
<
%s
*synth2$
Module counter 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module Destuffer_FSM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module Top_destuffer 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module my_rege 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               98 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     98 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module reg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module CRC_FSM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
<
%s
*synth2$
Module CRC_top 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 7     
2default:defaulth p
x
� 
?
%s
*synth2'
Module serializer 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
+design %s has port %s driven by constant %s3447*oasys2
	top_level2default:default2 
debug_out[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
	top_level2default:default2 
debug_out[6]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
	top_level2default:default2
SEGS[7]2default:default2
12default:defaultZ8-3917h px� 
~
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
CAN_tx2default:defaultZ8-3331h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\sdp_impl/bsc/z_reg 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[0]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[1]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[2]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[3]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[4]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[5]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[6]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[7]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[8]2default:default2
FDCE2default:default2+
crc_impl/preg/Qt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2+
crc_impl/preg/Qt_reg[9]2default:default2
FDCE2default:default2,
crc_impl/preg/Qt_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
crc_impl/preg/Qt_reg[10]2default:default2
FDCE2default:default2,
crc_impl/preg/Qt_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
crc_impl/preg/Qt_reg[11]2default:default2
FDCE2default:default2,
crc_impl/preg/Qt_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
crc_impl/preg/Qt_reg[12]2default:default2
FDCE2default:default2,
crc_impl/preg/Qt_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
crc_impl/preg/Qt_reg[13]2default:default2
FDCE2default:default2,
crc_impl/preg/Qt_reg[14]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
\crc_impl/preg/Qt_reg[14] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 957.430 ; gain = 406.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 957.430 ; gain = 406.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    43|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    25|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    25|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    16|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    57|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |     4|
2default:defaulth px� 
D
%s*synth2,
|10    |FDCE   |   263|
2default:defaulth px� 
D
%s*synth2,
|11    |FDPE   |     5|
2default:defaulth px� 
D
%s*synth2,
|12    |FDRE   |     8|
2default:defaulth px� 
D
%s*synth2,
|13    |LDC    |     1|
2default:defaulth px� 
D
%s*synth2,
|14    |IBUF   |     3|
2default:defaulth px� 
D
%s*synth2,
|15    |OBUF   |    32|
2default:defaulth px� 
D
%s*synth2,
|16    |OBUFT  |     1|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|      |Instance        |Module              |Cells |
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|1     |top             |                    |   492|
2default:defaulth p
x
� 
b
%s
*synth2J
6|2     |  crc_impl      |CRC_top             |   197|
2default:defaulth p
x
� 
b
%s
*synth2J
6|3     |    fs          |CRC_FSM             |    49|
2default:defaulth p
x
� 
b
%s
*synth2J
6|4     |    ireg0       |\reg                |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|5     |    ireg1       |reg_0               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|6     |    ireg10      |reg_1               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|7     |    ireg11      |reg_2               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|8     |    ireg12      |reg_3               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|9     |    ireg13      |reg_4               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|10    |    ireg14      |reg_5               |     7|
2default:defaulth p
x
� 
b
%s
*synth2J
6|11    |    ireg2       |reg_6               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|12    |    ireg3       |reg_7               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|13    |    ireg4       |reg_8               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|14    |    ireg5       |reg_9               |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|15    |    ireg6       |reg_10              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|16    |    ireg7       |reg_11              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|17    |    ireg8       |reg_12              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|18    |    ireg9       |reg_13              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|19    |    oreg1       |reg_14              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|20    |    oreg10      |reg_15              |     2|
2default:defaulth p
x
� 
b
%s
*synth2J
6|21    |    oreg11      |reg_16              |     2|
2default:defaulth p
x
� 
b
%s
*synth2J
6|22    |    oreg12      |reg_17              |     2|
2default:defaulth p
x
� 
b
%s
*synth2J
6|23    |    oreg13      |reg_18              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|24    |    oreg14      |reg_19              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|25    |    oreg15      |reg_20              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|26    |    oreg2       |reg_21              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|27    |    oreg3       |reg_22              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|28    |    oreg4       |reg_23              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|29    |    oreg5       |reg_24              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|30    |    oreg6       |reg_25              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|31    |    oreg7       |reg_26              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|32    |    oreg8       |reg_27              |     1|
2default:defaulth p
x
� 
b
%s
*synth2J
6|33    |    oreg9       |reg_28              |     2|
2default:defaulth p
x
� 
b
%s
*synth2J
6|34    |    preg        |my_rege             |   108|
2default:defaulth p
x
� 
b
%s
*synth2J
6|35    |  ds_impl       |Top_destuffer       |   135|
2default:defaulth p
x
� 
b
%s
*synth2J
6|36    |    FSM_C       |Destuffer_FSM       |    44|
2default:defaulth p
x
� 
b
%s
*synth2J
6|37    |      con       |counter             |    25|
2default:defaulth p
x
� 
b
%s
*synth2J
6|38    |    shiftreg    |shift_reg           |    90|
2default:defaulth p
x
� 
b
%s
*synth2J
6|39    |  sdp_impl      |SerialDataProcessor |    33|
2default:defaulth p
x
� 
b
%s
*synth2J
6|40    |    bsc         |bit_sample_clock    |    25|
2default:defaulth p
x
� 
b
%s
*synth2J
6|41    |  sevenseg_impl |serializer          |    73|
2default:defaulth p
x
� 
b
%s
*synth2J
6|42    |    gz          |my_genpulse         |    47|
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+----------------+--------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:22 . Memory (MB): peak = 978.441 ; gain = 329.516
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 978.441 ; gain = 427.207
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
978.4412default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
102default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
978.4412default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Z
F  A total of 1 instances were transformed.
  LDC => LDCE: 1 instance 
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1072default:default2
142default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:272default:default2
00:00:292default:default2
978.4412default:default2
680.4022default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
978.4412default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2h
TC:/Users/John/source/ECE4710-CAN-Controller/CANController.runs/synth_1/top_level.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Apr 22 20:16:57 20202default:defaultZ17-206h px� 


End Record