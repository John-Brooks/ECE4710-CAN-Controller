/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_12(char*, char *);
extern void execute_785(char*, char *);
extern void execute_786(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_23(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_115(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_120(char*, char *);
extern void execute_126(char*, char *);
extern void execute_132(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_176(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_182(char*, char *);
extern void execute_187(char*, char *);
extern void execute_190(char*, char *);
extern void execute_193(char*, char *);
extern void execute_196(char*, char *);
extern void execute_201(char*, char *);
extern void execute_206(char*, char *);
extern void execute_210(char*, char *);
extern void execute_215(char*, char *);
extern void execute_227(char*, char *);
extern void execute_245(char*, char *);
extern void execute_248(char*, char *);
extern void execute_279(char*, char *);
extern void execute_282(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_295(char*, char *);
extern void execute_660(char*, char *);
extern void execute_663(char*, char *);
extern void execute_666(char*, char *);
extern void execute_670(char*, char *);
extern void execute_675(char*, char *);
extern void execute_679(char*, char *);
extern void execute_684(char*, char *);
extern void execute_688(char*, char *);
extern void execute_693(char*, char *);
extern void execute_700(char*, char *);
extern void execute_705(char*, char *);
extern void execute_745(char*, char *);
extern void execute_754(char*, char *);
extern void execute_760(char*, char *);
extern void execute_761(char*, char *);
extern void execute_762(char*, char *);
extern void execute_763(char*, char *);
extern void execute_764(char*, char *);
extern void execute_765(char*, char *);
extern void execute_766(char*, char *);
extern void execute_767(char*, char *);
extern void execute_768(char*, char *);
extern void execute_780(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_223(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_344(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_408(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_424(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_432(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_480(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_488(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_504(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_512(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_536(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_552(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_560(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_568(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_576(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_584(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_592(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_608(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_616(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_632(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_640(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_648(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_672(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_680(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_704(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_728(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_736(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_744(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_752(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_760(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_768(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_776(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_784(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_792(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_800(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_808(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_816(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_824(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_832(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_840(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_864(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_872(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_880(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_888(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_896(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_904(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_912(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_920(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_928(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_936(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_944(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_952(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_960(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_968(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_976(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_984(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_992(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1000(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1008(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1016(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1024(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1032(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1040(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1048(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1056(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1064(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1072(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1080(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1088(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1221(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[219] = {(funcp)execute_12, (funcp)execute_785, (funcp)execute_786, (funcp)execute_17, (funcp)execute_18, (funcp)execute_20, (funcp)execute_21, (funcp)execute_23, (funcp)execute_30, (funcp)execute_31, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_115, (funcp)execute_117, (funcp)execute_118, (funcp)execute_120, (funcp)execute_126, (funcp)execute_132, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_176, (funcp)execute_178, (funcp)execute_179, (funcp)execute_182, (funcp)execute_187, (funcp)execute_190, (funcp)execute_193, (funcp)execute_196, (funcp)execute_201, (funcp)execute_206, (funcp)execute_210, (funcp)execute_215, (funcp)execute_227, (funcp)execute_245, (funcp)execute_248, (funcp)execute_279, (funcp)execute_282, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_292, (funcp)execute_293, (funcp)execute_295, (funcp)execute_660, (funcp)execute_663, (funcp)execute_666, (funcp)execute_670, (funcp)execute_675, (funcp)execute_679, (funcp)execute_684, (funcp)execute_688, (funcp)execute_693, (funcp)execute_700, (funcp)execute_705, (funcp)execute_745, (funcp)execute_754, (funcp)execute_760, (funcp)execute_761, (funcp)execute_762, (funcp)execute_763, (funcp)execute_764, (funcp)execute_765, (funcp)execute_766, (funcp)execute_767, (funcp)execute_768, (funcp)execute_780, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_37, (funcp)transaction_39, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_59, (funcp)transaction_66, (funcp)transaction_73, (funcp)transaction_80, (funcp)transaction_87, (funcp)transaction_94, (funcp)transaction_101, (funcp)transaction_108, (funcp)transaction_116, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_126, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_166, (funcp)transaction_174, (funcp)transaction_181, (funcp)transaction_188, (funcp)transaction_195, (funcp)transaction_202, (funcp)transaction_209, (funcp)transaction_216, (funcp)transaction_223, (funcp)transaction_230, (funcp)transaction_304, (funcp)transaction_312, (funcp)transaction_320, (funcp)transaction_328, (funcp)transaction_336, (funcp)transaction_344, (funcp)transaction_352, (funcp)transaction_361, (funcp)transaction_367, (funcp)transaction_384, (funcp)transaction_392, (funcp)transaction_400, (funcp)transaction_408, (funcp)transaction_416, (funcp)transaction_424, (funcp)transaction_432, (funcp)transaction_440, (funcp)transaction_448, (funcp)transaction_456, (funcp)transaction_464, (funcp)transaction_472, (funcp)transaction_480, (funcp)transaction_488, (funcp)transaction_496, (funcp)transaction_504, (funcp)transaction_512, (funcp)transaction_520, (funcp)transaction_528, (funcp)transaction_536, (funcp)transaction_544, (funcp)transaction_552, (funcp)transaction_560, (funcp)transaction_568, (funcp)transaction_576, (funcp)transaction_584, (funcp)transaction_592, (funcp)transaction_600, (funcp)transaction_608, (funcp)transaction_616, (funcp)transaction_624, (funcp)transaction_632, (funcp)transaction_640, (funcp)transaction_648, (funcp)transaction_656, (funcp)transaction_664, (funcp)transaction_672, (funcp)transaction_680, (funcp)transaction_688, (funcp)transaction_696, (funcp)transaction_704, (funcp)transaction_712, (funcp)transaction_720, (funcp)transaction_728, (funcp)transaction_736, (funcp)transaction_744, (funcp)transaction_752, (funcp)transaction_760, (funcp)transaction_768, (funcp)transaction_776, (funcp)transaction_784, (funcp)transaction_792, (funcp)transaction_800, (funcp)transaction_808, (funcp)transaction_816, (funcp)transaction_824, (funcp)transaction_832, (funcp)transaction_840, (funcp)transaction_848, (funcp)transaction_856, (funcp)transaction_864, (funcp)transaction_872, (funcp)transaction_880, (funcp)transaction_888, (funcp)transaction_896, (funcp)transaction_904, (funcp)transaction_912, (funcp)transaction_920, (funcp)transaction_928, (funcp)transaction_936, (funcp)transaction_944, (funcp)transaction_952, (funcp)transaction_960, (funcp)transaction_968, (funcp)transaction_976, (funcp)transaction_984, (funcp)transaction_992, (funcp)transaction_1000, (funcp)transaction_1008, (funcp)transaction_1016, (funcp)transaction_1024, (funcp)transaction_1032, (funcp)transaction_1040, (funcp)transaction_1048, (funcp)transaction_1056, (funcp)transaction_1064, (funcp)transaction_1072, (funcp)transaction_1080, (funcp)transaction_1088, (funcp)transaction_1128, (funcp)transaction_1135, (funcp)transaction_1142, (funcp)transaction_1148, (funcp)transaction_1156, (funcp)transaction_1163, (funcp)transaction_1169, (funcp)transaction_1176, (funcp)transaction_1184, (funcp)transaction_1194, (funcp)transaction_1211, (funcp)transaction_1221};
const int NumRelocateId= 219;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_level_tb_func_synth/xsim.reloc",  (void **)funcTab, 219);
	iki_vhdl_file_variable_register(dp + 256416);
	iki_vhdl_file_variable_register(dp + 256472);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_level_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_level_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/top_level_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_level_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_level_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
