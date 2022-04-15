#include "complex_polar.h"
#include <math.h>
#include "snrt.h"
#include "lut/sqrt_lookuptable.h"


void polar_baseline(double *a, double *c, uint32_t size){

	for(uint32_t  i = 0; i < size; i += 2){
		c[i] = sqrt(a[i]*a[i]+ a[i+1]*a[i+1]);
		c[i + 1] = atan(a[i+1] / a[i]);

	}
}


void polar_ssr(double *a, double *c, double *d, uint32_t size){

	register volatile double ft0 asm("ft0");		
    register volatile double ft1 asm("ft1");
	asm volatile("" : "=f"(ft0), "=f"(ft1));

    snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, a);
	snrt_ssr_enable();

	for(uint32_t  i = 0; i < size; i += 2){		//magnitude
		register double b0;
		register uint32_t d0; 
		asm volatile(
            "fmul.d ft3, ft0, ft1 \n"
            "fmul.d ft4, ft0, ft1 \n"
			"fadd.d ft5, ft3, ft4 \n"
			:	[ b0 ] "+f"(b0)
			:
			:	"ft0","ft1","ft3","ft4",);

		if(b0 < 1){
			d0 = (int) ((b0 * 50) + 0.5);
			c[i] = lookup[d0];
		}
		else if(b0 < 10){
			d0 = (int) ((b0 * 10) + 0.5);
			c[i] = lookup[d0 - 10 + 50];
		}
		else if(b0 < 50){
			d0 = (int) (b0 + 0.5);
			c[i] = lookup[d0 - 10 + 141];
		}

		// b[i] = b0;
		// if(b[i] < 1){
		// 	d0 = (int) ((b[i] * 50) + 0.5);
		// 	c[i] = lookup[d0];
		// }
		// else if(b[i] < 10){
		// 	d0 = (int) ((b[i] * 10) + 0.5);
		// 	c[i] = lookup[d0 - 10 + 50];
		// }
		// else if(b[i] < 50){
		// 	d0 = (int) (b[i] + 0.5);
		// 	c[i] = lookup[d0 - 10 + 141];
		// }
	}

	snrt_ssr_disable();

    snrt_ssr_loop_1d(SNRT_SSR_DM0, size / 2, 16);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &a[1]);
	snrt_ssr_enable();


	for(uint32_t  i = 0; i < size; i += 2){
		
		register double d0; // = d[i];
		register double d1; // = d[i+1];
		asm volatile(
			"fdiv.d %[d0], ft1, ft0 \n"
			"fabs.d ft3, %[d0] \n"
			"fdiv.d %[d1], %[d0], ft3 \n"
			:	[ d0 ] "+f"(d0) , [ d1 ] "+f"(d1)
			:
			:	"ft0","ft1","ft3");

		d[i] = d0;
		d[i+1] = d1;	
	}
		
	snrt_ssr_disable();	


	for(uint32_t  i = 0; i < size; i += 2){		//magnitude
		register uint32_t e0; 
		if(d[i] < -10){
			e0 = (int) (d[i] - 0.5);
			c[i] = lookup[e0 + 40];
		}
		else if(d[i] < -5){
			e0 = (int) ((d[i] * 2) - 0.5);
			c[i] = lookup[e0 + 50];
		}
		else if(d[i] < -1.5){
			e0 = (int) ((d[i] * 10) - 0.5);
			c[i] = lookup[e0 + 90];
		}
		else if(d[i] < 0){
			e0 = (int) ((d[i] * 100) - 0.5);
			c[i] = lookup[e0 + 225];
		}
		else if(d[i] < 1.5){
			e0 = (int) ((d[i] * 100) + 0.5);
			c[i] = lookup[e0 + 225];
		}
		else if(d[i] < 5){
			e0 = (int) ((d[i] * 10) + 0.5);
			c[i] = lookup[e0 + 359];
		}
		else if(d[i] < 10){
			e0 = (int) ((d[i] * 2) + 0.5);
			c[i] = lookup[e0 + 400];
		}
		else if(d[i] < 40){
			e0 = (int) (d[i] + 0.5);
			c[i] = lookup[e0 + 410];
		}
		else{
			c[i] = lookup[451];
		}
	}
	
		
		
	// 			//angle
	// 	register double c0 = c[i];
	// 	register double d0 = 1;					//borders
	// 	register double d1 = 1.6;
	// 	register double d2 = 3.6;
	// 	register double d3 = 7.3;
	// 	register double d4 = 23;

	// 	register double d5 = 0.07765;			//1st
	// 	register double d6 = 0.2874;
	// 	register double d7 = 0.9953;
		
	// 	register double d8 = 0.954;				//2nd
	// 	register double d9 = 0.337;
	// 	register double d10 = 0.23;
	// 	register double d11 = 1.4;

	// 	register double d12 = 1.2036;			//3rd
	// 	register double d13 = 0.1288;
	// 	register double d14 = 2.6;
	// 	register double d15 = 2.73;
	// 	register double d16 = 0.045;

	// 	register double d17 = 1.37;				//4th
	// 	register double d18 = 0.04;
	// 	register double d19 = 5.2;

	// 	register double d20 = 1.4876;			//5th
	// 	register double d21 = 0.0069;
	// 	register double d22 = 12;

	// 	register double d23 = 1.5707;			//6th


	// 	asm volatile(
    //         "fdiv.d ft3, ft0, ft1 \n"
	// 		"bge ft3, x0, 4 \n"
	// 		"fsub.d ft3, x0, ft3 \n"
	// 		"fadd.d ft4, ft3, x0 \n"
	// 		"fmul.d ft5, ft3, ft4 \n"  //x^2
	// 		"fmul.d ft6, ft3, ft5 \n"	//x^3
	// 		"fmul.d ft7, ft5, ft6 \n"	//x^5

	// 		"blt %[d0], ft3, 24 \n"
	// 		"fmul.d ft8, %[d5], ft7 \n"	
	// 		"fmul.d ft9, %[d6], ft6 \n"	
	// 		"fmul.d ft10, %[d7], ft4 \n"
	// 		"fsub.d ft11, ft8, ft9 \n"
	// 		"fadd.d ft15, ft10, ft11 \n"	//ft15 = result
	// 		"jal x0, ??"					//go to end

	// 		"blt %[d1], ft3, 36 \n"	
	// 		"fadd.d ft8, %[d8], x0 \n"		//0.
	// 		"fsub.d ft9, ft3, %[d11] \n"
	// 		"fmul.d ft10, %[d9], ft9 \n"  	//1.
	// 		"fadd.d ft11, ft9, x0 \n"
	// 		"fmul.d ft12, ft11, ft9 \n"	
	// 		"fmul.d ft13, %[d10], ft12 \n"	//2.
	// 		"fadd.d ft14, ft8, ft10 \n"
	// 		"fsub.d ft15, ft14, ft13 \n"	//ft15 = result
	// 		"j ??"

			
	// 		"blt %[d2], ft3, 36 \n"	
	// 		"fadd.d ft8, %[d14], x0 \n"		//0.
	// 		"fsub.d ft9, ft3, %[d12] \n"
	// 		"fmul.d ft10, %[d9], ft9 \n"  	//1.
	// 		"fadd.d ft11, ft9, x0 \n"
	// 		"fmul.d ft12, ft11, ft9 \n"	
	// 		"fmul.d ft13, %[d10], ft12 \n"	//2.
	// 		"fadd.d ft14, ft8, ft10 \n"
	// 		"fsub.d ft15, ft14, ft13 \n"	//ft15 = result
	// 		"j ??"








		
	// 		:	[ c0 ] "+f"(c0)
	// 		:
	// 		:	"ft0","ft1","ft3");

	// 	c[i] = c0;
	// }




void polar_ssr_frep(double *a, double *c, uint32_t size){		

}




