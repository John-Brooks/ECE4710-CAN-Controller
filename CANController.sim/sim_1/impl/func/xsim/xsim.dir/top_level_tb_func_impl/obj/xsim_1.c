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
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_52(char*, char *);
extern void execute_82(char*, char *);
extern void execute_85(char*, char *);
extern void execute_87(char*, char *);
extern void execute_93(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_143(char*, char *);
extern void execute_148(char*, char *);
extern void execute_151(char*, char *);
extern void execute_154(char*, char *);
extern void execute_157(char*, char *);
extern void execute_159(char*, char *);
extern void execute_164(char*, char *);
extern void execute_168(char*, char *);
extern void execute_171(char*, char *);
extern void execute_174(char*, char *);
extern void execute_179(char*, char *);
extern void execute_183(char*, char *);
extern void execute_187(char*, char *);
extern void execute_195(char*, char *);
extern void execute_229(char*, char *);
extern void execute_233(char*, char *);
extern void execute_236(char*, char *);
extern void execute_239(char*, char *);
extern void execute_243(char*, char *);
extern void execute_248(char*, char *);
extern void execute_252(char*, char *);
extern void execute_257(char*, char *);
extern void execute_261(char*, char *);
extern void execute_266(char*, char *);
extern void execute_275(char*, char *);
extern void execute_313(char*, char *);
extern void execute_318(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_349(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_294(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_301(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_344(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[107] = {(funcp)execute_12, (funcp)execute_354, (funcp)execute_355, (funcp)execute_17, (funcp)execute_18, (funcp)execute_20, (funcp)execute_21, (funcp)execute_28, (funcp)execute_29, (funcp)execute_52, (funcp)execute_82, (funcp)execute_85, (funcp)execute_87, (funcp)execute_93, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_139, (funcp)execute_140, (funcp)execute_143, (funcp)execute_148, (funcp)execute_151, (funcp)execute_154, (funcp)execute_157, (funcp)execute_159, (funcp)execute_164, (funcp)execute_168, (funcp)execute_171, (funcp)execute_174, (funcp)execute_179, (funcp)execute_183, (funcp)execute_187, (funcp)execute_195, (funcp)execute_229, (funcp)execute_233, (funcp)execute_236, (funcp)execute_239, (funcp)execute_243, (funcp)execute_248, (funcp)execute_252, (funcp)execute_257, (funcp)execute_261, (funcp)execute_266, (funcp)execute_275, (funcp)execute_313, (funcp)execute_318, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_349, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_36, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_99, (funcp)transaction_107, (funcp)transaction_114, (funcp)transaction_121, (funcp)transaction_128, (funcp)transaction_135, (funcp)transaction_142, (funcp)transaction_149, (funcp)transaction_156, (funcp)transaction_163, (funcp)transaction_206, (funcp)transaction_213, (funcp)transaction_220, (funcp)transaction_227, (funcp)transaction_234, (funcp)transaction_241, (funcp)transaction_248, (funcp)transaction_287, (funcp)transaction_294, (funcp)transaction_301, (funcp)transaction_307, (funcp)transaction_315, (funcp)transaction_322, (funcp)transaction_328, (funcp)transaction_335, (funcp)transaction_344, (funcp)transaction_352, (funcp)transaction_369, (funcp)transaction_378};
const int NumRelocateId= 107;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_level_tb_func_impl/xsim.reloc",  (void **)funcTab, 107);
	iki_vhdl_file_variable_register(dp + 81880);
	iki_vhdl_file_variable_register(dp + 81936);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_level_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_level_tb_func_impl/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/top_level_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_level_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_level_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
