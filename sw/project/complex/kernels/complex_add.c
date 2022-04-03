#include <complex_add.h>


void addition_baseline(double *a, double *b, double *c, uint32_t size){
    
    for(uint32_t  i = 0; i < size; i++){
	    c[i] = a[i] + b[i];
	}
}


void addition_ssr(double *a, double *b, double *c, uint32_t size){

    register volatile double ft0 asm("ft0");		
    register volatile double ft1 asm("ft1");
	asm volatile("" : "=f"(ft0), "=f"(ft1));

    snrt_ssr_loop_2d(SNRT_SSR_DM0, size, 8, size, 8);
    snrt_ssr_loop_2d(SNRT_SSR_DM1, size, 8, size, 8);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_2D, a);
	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_2D, b);
	snrt_ssr_enable();
		
	for(uint32_t  i = 0; i < size; i++){
		register double c0 = c[i];
		asm volatile(
			"fadd.d %[c0], ft0, ft1, 0 \n"
			:	[ c0 ] "+f"(c0)
			:
			:	"ft0");
	}


	snrt_ssr_disable();
}


void addition_ssr_frep(double *a, double *b, double *c, uint32_t size){


}