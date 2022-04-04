#include <complex_polar.h>
#include <math.h>



void polar_baseline(double *a, double *c, uint32_t size){

	for(uint32_t  i = 0; i < size; i += 2){
		c[i] = sqrt(a[i]*a[i]+ a[i+1]*a[i+1])
		c[i + 1] = atan(a[i+1] / a[i])

	}

	// for(uint32_t  i = 0; i < size; i += 2){
	//     asm volatile(
	//     	"fld ft0,0(%[a0]) \n"
	//     	"fld ft1,0(%[a0]) \n"
	//     	"fld ft2,0(%[a1]) \n"
	//     	"fld ft3,0(%[a1]) \n"
	//     	"fmul ft4, ft0, ft1 \n"
	//     	"fmul ft5, ft2, ft3 \n"
	//     	"fsqrt fs0, ft4, ft5 \n"
	//     	"fsd fs0,0(%[c0]) \n"
	//     	:
	//     	: 	[ a0 ] "r"(a[i]),
	//     		[ c0 ] "r"(c[i])
	//     	: 	"ft0","ft1","ft2","ft3","ft4","ft5","fs0","memory");
	// }
	// if(-1.1 < x < 1.1){
	// 	0.07765x5 - 0.2874x3 + (pi/4 - 0.077 +0.287)x
	// }
	// if(1.1 < x < 2){
	// 	....
	// }
	// ...


}


void polar_ssr(double *a, double *c, uint32_t size){

	register volatile double ft0 asm("ft0");		
    register volatile double ft1 asm("ft1");
	asm volatile("" : "=f"(ft0), "=f"(ft1));

    snrt_ssr_loop_2d(SNRT_SSR_DM0, size / 2, size / 2, 8, 8);
    snrt_ssr_loop_2d(SNRT_SSR_DM1, size / 2, size / 2, 8, 8);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_2D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_2D, a);
	snrt_ssr_enable();

	for(uint32_t  i = 0; i < size; i += 2){
		register double c0 = c[i];
		register double c0 = c[i + 1];
		asm volatile(
            "fmul.d ft0, ft0, ft1 \n"
            "fmul.d ft0, ft0, ft1 \n"
			"fmadd.d %[c0], ft0, ft1, 0 \n"
			:	[ c0 ] "+f"(c0)
			:
			:	"ft0","ft1");
	}


	snrt_ssr_disable();



}


void polar_ssr_frep(double *a, double *c, uint32_t size){

}




