/* Automation Studio generated header file */
/* Do not edit ! */
/* Library  */

#ifndef _LIBRARY_
#define _LIBRARY_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct FB_Integrator
{
	/* VAR_INPUT (analog) */
	float in;
	/* VAR_OUTPUT (analog) */
	float out;
	/* VAR (analog) */
	float dt;
	float state;
} FB_Integrator_typ;

typedef struct FB_Controller
{
	/* VAR_INPUT (analog) */
	float e;
	/* VAR_OUTPUT (analog) */
	float u;
	/* VAR (analog) */
	float dt;
	float k_i;
	float k_p;
	float max_abs_value;
	struct FB_Integrator integrator;
	float iyOld;
} FB_Controller_typ;

typedef struct FB_Motor
{
	/* VAR_INPUT (analog) */
	float in;
	/* VAR_OUTPUT (analog) */
	float out_w;
	/* VAR (analog) */
	float dt;
	float k_e;
	float T_m;
	struct FB_Integrator integrator;
} FB_Motor_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void FB_Controller(struct FB_Controller* inst);
_BUR_PUBLIC void FB_Integrator(struct FB_Integrator* inst);
_BUR_PUBLIC void FB_Motor(struct FB_Motor* inst);


#ifdef __cplusplus
};
#endif
#endif /* _LIBRARY_ */

