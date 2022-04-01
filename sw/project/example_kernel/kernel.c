#include "kernel.h"


void kernel(double *a, double *b, double *c, uint32_t size){

	

	// for(uint32_t  i = 0; i < size; i++){

	// 	c[i] = a[i] * b[i];
	// }



	for(uint32_t  i = 0; i < size; i++){		//baseline
		asm volatile(
			"fld    ft0,0(%[a0]) \n"
	        "fld    ft1,0(%[b0]) \n"
	        "fmul   fs0, ft0, ft1 \n"			//or "fmadd.d    fs0, ft0, ft1, fs0 \n" ??
	        "fsd    fs0,0(%[c0]) \n"
	        :
	        :	[ a0 ] "r"(a[i]),
	        	[ b0 ] "r"(b[i]),
	        	[ c0 ] "r"(c[i])
	        : 	"ft0", "ft1","fs0","memory");
	}



}

// void kernel_ssr(double *a, double *b, double *c, uint32_t size){
		
// 		register volatile double ft0 asm("ft0");		//ssr
// 	    register volatile double ft1 asm("ft1");
// 	    asm volatile("" : "=f"(ft0), "=f"(ft1));

// 	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_3D, a);
// 	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_4D, b);
// 	    snrt_ssr_enable();
		
// 		for(uint32_t  i = 0; i < size; i++){
// 			register double c0 = c[i];
// 			asm volatile(
// 				"fmadd.d %[c0], ft0, ft1, 0 \n"
// 				:	[ c0 ] "+f"(c0)
// 				:
// 				:	"ft0");
// 		}


// 		snrt_ssr_disable();
// }


// void kernel_ssr_frep(double *a, double *b, double *c, uint32_t size){
		
// 		register volatile double ft0 asm("ft0");		//ssr with frep
// 	    register volatile double ft1 asm("ft1");
// 	    asm volatile("" : "=f"(ft0), "=f"(ft1));

// 	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_3D, a);
// 	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_4D, b);
// 	    snrt_ssr_enable();
		
		
// 		register double c0 = c[i];
// 		asm volatile(
// 				"frep.o %[n_frep], size, 0, 0 \n"
// 				"fmadd.d %[c0], ft0, ft1, 0 \n"
// 				:	[ c0 ] "+f"(c0)
// 				:
// 				:	"ft0");


// 		snrt_ssr_disable();
// }