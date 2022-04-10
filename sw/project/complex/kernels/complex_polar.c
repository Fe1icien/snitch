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

    snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, a);
	snrt_ssr_enable();

	for(uint32_t  i = 0; i < size; i += 2){		//magnitude
		register double c0 = c[i];
		asm volatile(
            "fmul.d ft3, ft0, ft1 \n"
            "fmul.d ft4, ft0, ft1 \n"
			"fadd.d ft5, ft0, ft1 \n"
			"fsqrt %[c0], ft5 \n"
			:	[ c0 ] "+f"(c0)
			:
			:	"ft0","ft1","ft3","ft4","ft5");

		c[i] = c0;
	}

	snrt_ssr_disable();


    snrt_ssr_loop_1d(SNRT_SSR_DM0, size / 2, 16);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &a[1]);
	snrt_ssr_enable();


	
	for(uint32_t  i = 0; i < size; i += 2){		//angle
		register double c0 = c[i];
		register double d0 = 1;
		register double d1 = 1.6;
		register double d2 = 3.6;
		register double d3 = 7.3;
		register double d4 = 23;

		register double d5 = 0.07765;
		register double d6 = 0.2874;
		register double d7 = 0.9953;
		
		register double d8 = 0.954;
		register double d9 = 0.337;
		register double d10 = 0.23;
		register double d11 = 1.4;

		register double d12 = 1.2036;
		register double d13 = 0.1288;
		register double d14 = 2.6;
		register double d15 = 2.73;
		register double d16 = 0.045;

		asm volatile(
            "fdiv.d ft3, ft0, ft1 \n"
			"bge ft3, x0, 4 \n"
			"fsub.d ft3, x0, ft3 \n"
			"fadd.d ft4, ft3, x0 \n"
			"fmul.d ft5, ft3, ft4 \n"  //x^2
			"fmul.d ft6, ft3, ft5 \n"	//x^3
			"fmul.d ft7, ft5, ft6 \n"	//x^5
			"blt %[d0], ft3, 24 \n"
			"fmul.d ft8, %[d5], ft7 \n"	
			"fmul.d ft9, %[d6], ft6 \n"	
			"fmul.d ft10, %[d7], ft4 \n"
			"fsub.d ft11, ft8, ft9 \n"
			"fadd.d ft15, ft10, ft11 \n"	//ft15 = result
			"jal x0, ??"					//go to end
			"blt %[d1], ft3, 36 \n"	
			"fadd.d ft8, %[d8], x0 \n"		//0.
			"fsub.d ft9, ft3, %[d11] \n"
			"fmul.d ft10, %[d9], ft9 \n"  	//1.
			"fadd.d ft11, ft9, x0 \n"
			"fmul.d ft12, ft11, ft9 \n"	
			"fmul.d ft13, %[d10], ft12 \n"	//2.
			"fadd.d ft14, ft8, ft10 \n"
			"fsub.d ft15, ft14, ft13 \n"	//ft15 = result
			"jal x0, ??"



			
			"blt %[d2], ft3, 36 \n"	
			"fadd.d ft8, %[d8], x0 \n"		//0.
			"fsub.d ft9, ft3, %[d11] \n"
			"fmul.d ft10, %[d9], ft9 \n"  	//1.
			"fadd.d ft11, ft9, x0 \n"
			"fmul.d ft12, ft11, ft9 \n"	
			"fmul.d ft13, %[d10], ft12 \n"	//2.
			"fadd.d ft14, ft8, ft10 \n"
			"fsub.d ft15, ft14, ft13 \n"	//ft15 = result
			"jal x0, ??"





		
			:	[ c0 ] "+f"(c0)
			:
			:	"ft0","ft1","ft3");

		c[i] = c0;
	}


}


void polar_ssr_frep(double *a, double *c, uint32_t size){		

}




