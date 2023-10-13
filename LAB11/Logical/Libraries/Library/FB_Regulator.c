
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_Regulator(struct FB_Regulator* inst)
{
	REAL a = inst->in * inst->k_p;
	REAL a = inst->in * inst->k_i; // * inst->dt;
	
	a = a > inst->max_abs_value ? inst->max_abs_value : a;
	a = a < inst->max_abs_value ? -inst->max_abs_value : a;
	
	inst->integrator.in = b + inst->iyOld;
	FB_Integrator(&inst->integrator);
	
	REAL sum = a + inst->integrator.out;
	
	inst->out = sum;
	inst->out = inst->out > inst->max_abs_value ? inst->max_abs_value : inst->out;
	inst->out = inst->out < -inst->max_abs_value ? -inst->max_abs_value : inst->out;
	
	inst->iyOld = inst->out - sum;
}
