
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* function block for motors model */
void FB_Motor(struct FB_Motor* inst)
{
	REAL a = inst->in / inst->k_e - inst->out_w;
	REAL b = a / inst->T_m;
	
	inst->integrator.in = b;
	FB_Integrator(&inst->integrator);
	
	inst->out_w = inst->integrator.out;
}

