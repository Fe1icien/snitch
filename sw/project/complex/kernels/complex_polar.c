#include "complex_polar.h"
#include <math.h>
#include "snrt.h"
//#include "lut/sqrt_lookuptable.h"
//#include "lut/atan_lookuptable.h"
#include "printf.h"


void polar_baseline(double *a, double *c, uint32_t size){

	size_t core_id = snrt_cluster_compute_core_idx();
	if(core_id == 0){
		for(uint32_t  i = 0; i < size; i += 2){
			c[i] = sqrt(a[i]*a[i]+ a[i+1]*a[i+1]);
			c[i + 1] = atan(a[i+1] / a[i]);
			if(a[i] < 0){
				if(c[i + 1] > 0){
					c[i + 1] -= 3.14159265359;
				}
				else{
					c[i + 1] += 3.14159265359;
				}
			}
		}
	}
	snrt_cluster_hw_barrier();
}


void polar_ssr(double *a, double *c, double *d, double *lookup, double *lookup2, uint32_t size){

	size_t core_id = snrt_cluster_compute_core_idx();
	if(core_id == 0){
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
				"fadd.d %[b0], ft3, ft4 \n"
				:	[ b0 ] "+f"(b0)
				:
				:	"ft0","ft1","ft3","ft4");

			if(b0 < 1){
				d0 = (int) ((b0 * 50) + 0.5);
				c[i] = lookup2[d0];
			}
			else if(b0 < 10){
				d0 = (int) ((b0 * 10) + 0.5);
				c[i] = lookup2[d0 - 10 + 50];
			}
			else if(b0 < 50){
				d0 = (int) (b0 + 0.5);
				c[i] = lookup2[d0 - 10 + 141];
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
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, a);
		snrt_ssr_enable();


		for(uint32_t  i = 0; i < size; i += 2){
			
			register double d0; // = d[i];
			register double d1; // = d[i+1];
			//register double d2 = 0;
			asm volatile(
				"fmv.d ft3, ft1 \n"
				"fabs.d ft4, ft3 \n"
				"fdiv.d %[d0], ft1, ft0 \n"
				"fdiv.d %[d1], ft3, ft4 \n"
				:	[ d0 ] "+f"(d0) , [ d1 ] "+f"(d1)// , [ d2 ] "+f"(d2)
				:
				:	"ft0","ft1","ft3","ft4");

			// d[i] = d0;
			// d[i+1] = d1;	
		// }
			
		// snrt_ssr_disable();	


		// for(uint32_t  i = 0; i < size; i += 2){		//angle
			register uint32_t e0;
			if(d0 < -40){
				c[i + 1] = lookup[451];
			}
			else if(d0 < -10){
				e0 = (int) (d0 - 0.5);
				c[i + 1] = lookup[e0 + 40];
			}
			else if(d0 < -5){
				e0 = (int) ((d0 * 2) - 0.5);
				c[i + 1] = lookup[e0 + 50];
			}
			else if(d0 < -1.5){
				e0 = (int) ((d0 * 10) - 0.5);
				c[i + 1] = lookup[e0 + 90];
			}
			else if(d0 < 0){
				e0 = (int) ((d0 * 100) - 0.5);
				c[i + 1] = lookup[e0 + 225];
			}
			else if(d0 < 1.5){
				e0 = (int) ((d0 * 100) + 0.5);
				c[i + 1] = lookup[e0 + 225];
			}
			else if(d0 < 5){
				e0 = (int) ((d0 * 10) + 0.5);
				c[i + 1] = lookup[e0 + 360];
			}
			else if(d0 < 10){
				e0 = (int) ((d0 * 2) + 0.5);
				c[i + 1] = lookup[e0 + 401];
			}
			else if(d0 < 40){
				e0 = (int) (d0 + 0.5);
				c[i + 1] = lookup[e0 + 411];
			}
			else{
				c[i + 1] = lookup[451];
			}

			if(d1 < 0){
				if(c[i + 1] > 0){
					c[i + 1] -= (2 * lookup[451]);
				}
				else{
					c[i + 1] += (2 * lookup[451]);
				}
			}
		}
		snrt_ssr_disable();
	}
	snrt_cluster_hw_barrier();
}


void polar_ssr_frep(double *a, double *c, double *d, double *e, double *lookup, double *lookup2, uint32_t size){		

	size_t core_id = snrt_cluster_compute_core_idx();
	if(core_id == 0){
		snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, a);
	    snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, e);
		snrt_ssr_enable();

			
		asm volatile(								//magnitude
			"frep.o %[n_frep], 3, 0, 0 \n"
	        "fmul.d ft3, ft0, ft1 \n"
	        "fmul.d ft4, ft0, ft1 \n"
			"fadd.d ft2, ft3, ft4 \n"
			:	
			:	[ n_frep ] "r"((size / 2) - 1)
			:	"ft0","ft1","ft2","ft3","ft4");
		

		for(uint32_t  i = 0; i < size; i += 2){
			register uint32_t d0; 
			if(e[i / 2] < 1){
				d0 = (int) ((e[i / 2] * 50) + 0.5);
				c[i] = lookup2[d0];
			}
			else if(e[i / 2] < 10){
				d0 = (int) ((e[i / 2] * 10) + 0.5);
				c[i] = lookup2[d0 - 10 + 50];
				}
			else if(e[i / 2] < 50){
				d0 = (int) (e[i / 2] + 0.5);
				c[i] = lookup2[d0 - 10 + 141];
			}
		}
		
		snrt_ssr_disable();

		snrt_ssr_loop_1d(SNRT_SSR_DM0, size / 2, 16);
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM2, size, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, a);
	    snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, d);
		snrt_ssr_enable();

		
		//register double d2 = 0;
		asm volatile(							//angle
			"frep.o %[n_frep], 4, 0, 0 \n"
			"fmv.d ft3, ft1  \n"
			"fabs.d ft4, ft3 \n"
			"fdiv.d ft2, ft1, ft0 \n"
			"fdiv.d ft2, ft3, ft4 \n"
			:	//[ d2 ] "+f"(d2)
			:	[ n_frep ] "r"((size / 2) - 1)
			:	"ft0","ft1","ft2","ft3","ft4");
		
		snrt_ssr_disable();	


		for(uint32_t  i = 0; i < size; i += 2){		
			register uint32_t e0;
			if(d[i] < -40){
				c[i + 1] = lookup[451];
			}
			else if(d[i] < -10){
				e0 = (int) (d[i] - 0.5);
				c[i + 1] = lookup[e0 + 40];
			}
			else if(d[i] < -5){
				e0 = (int) ((d[i] * 2) - 0.5);
				c[i + 1] = lookup[e0 + 50];
			}
			else if(d[i] < -1.5){
				e0 = (int) ((d[i] * 10) - 0.5);
				c[i + 1] = lookup[e0 + 90];
			}
			else if(d[i] < 0){
				e0 = (int) ((d[i] * 100) - 0.5);
				c[i + 1] = lookup[e0 + 225];
			}
			else if(d[i] < 1.5){
				e0 = (int) ((d[i] * 100) + 0.5);
				c[i + 1] = lookup[e0 + 225];
			}
			else if(d[i] < 5){
				e0 = (int) ((d[i] * 10) + 0.5);
				c[i + 1] = lookup[e0 + 360];
			}
			else if(d[i] < 10){
				e0 = (int) ((d[i] * 2) + 0.5);
				c[i + 1] = lookup[e0 + 401];
			}
			else if(d[i] < 40){
				e0 = (int) (d[i] + 0.5);
				c[i + 1] = lookup[e0 + 411];
			}
			else{
				c[i + 1] = lookup[451];
			}

			if(d[i+1] < 0){
				if(c[i + 1] > 0){
					c[i + 1] -= (2 * lookup[451]);
				}
				else{
					c[i + 1] += (2 * lookup[451]);
				}
			}
		}
	}
	snrt_cluster_hw_barrier();
}




