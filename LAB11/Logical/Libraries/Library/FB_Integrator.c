
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
void FB_Integrator(struct FB_Integrator* inst)
{
	inst->out=inst->dt * inst ->in+inst->state;
	inst->state=inst->out;
}
