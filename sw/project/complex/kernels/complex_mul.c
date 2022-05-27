#include "complex_mul.h"
#include "snrt.h"
#include "printf.h"


void multiplication_baseline(double *a, double *b, double *c, uint32_t size){

	size_t core_id = snrt_cluster_compute_core_idx();
	if(core_id == 0){
	    for(uint32_t  i = 0; i < size; i += 2){
		    c[i] = a[i] * b[i] - a[i + 1] * b[i + 1];
	        c[i + 1] = a[i] * b[i + 1] + a[i + 1] * b[i];
		}
	}
	snrt_cluster_hw_barrier();
}


void multiplication_ssr(double *a, double *b, double *c, uint32_t size){

	// size_t core_id = snrt_cluster_compute_core_idx();
	// if(core_id == 0){

	//     snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	//     snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	//     snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, c);
	// 	snrt_ssr_enable();
			
	// 	for(uint32_t  i = 0; i < size; i += 2){				//real values
	// 		//register double c0 = c[i];
	// 		asm volatile(
	// 			"fmul.d ft3, ft0, ft1 \n"
	// 			"fmul.d ft4, ft0, ft1 \n"
	// 			//"fsub.d %[c0], ft3, ft4 \n"
	// 			"fsub.d ft2, ft3, ft4 \n"
	// 			:	//[ c0 ] "+f"(c0)
	// 			:
	// 			:	"ft0","ft1","ft2","ft3","ft4");

	// 		//c[i] = c0;
	// 	}

	// 	snrt_ssr_disable();

	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	// 	snrt_ssr_read(SNRT_SSR_DM2, SNRT_SSR_1D, &b[1]);
	// 	snrt_ssr_enable();

	// 	for(uint32_t  i = 1; i < size; i += 2){				//imaginary values
	// 		register double c0;	
	// 		asm volatile(
	// 			"fmul.d ft3, ft0, ft2 \n"
	// 			"fmul.d ft4, ft0, ft1 \n"
	// 			"fadd.d %[c0], ft3, ft4 \n"
	// 			:	[ c0 ] "+f"(c0)
	// 			:
	// 			:	"ft0","ft1","ft2","ft3","ft4");

	// 		c[i] = c0;
	// 	}

	// 	snrt_ssr_disable();

	// }
	// snrt_cluster_hw_barrier();





	size_t core_id = snrt_cluster_compute_core_idx();
	if(core_id == 0){

	    snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM2, size, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	    snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, c);
		snrt_ssr_enable();
			
		for(uint32_t  i = 0; i < size; i += 2){				//real values
			//register double c0;
			//register double c1;
			//register double d0 = 0;
			asm volatile(
				"fmv.d ft3, ft0 \n"   		//a0
				"fmv.d ft4, ft1 \n"			//b0
	 			"fmv.d ft5, ft0 \n"			//a1
	 			"fmv.d ft6, ft1 \n"			//b1
				"fmul.d ft7, ft3, ft4 \n"
				"fmul.d ft8, ft5, ft6 \n"
				//"fsub.d %[c0], ft7, ft8 \n"
				"fsub.d ft2, ft7, ft8 \n"
				"fmul.d ft7, ft3, ft6 \n"
				"fmul.d ft8, ft4, ft5 \n"
				//"fadd.d %[c1], ft7, ft8 \n"
				"fadd.d ft2, ft7, ft8 \n"
				:	//[ d0 ] "+f"(d0) //[ c0 ] "+f"(c0), [ c1 ] "+f"(c1), [ d0 ] "+f"(d0)
				:
				:	"ft0","ft1","ft2","ft3","ft4","ft5","ft6","ft7","ft8");

			//c[i] = c0;
			//c[i + 1] = c1;
		}

		snrt_ssr_disable();
	}
	snrt_cluster_hw_barrier();
}


void multiplication_ssr_frep(double *a, double *b, double *c, uint32_t size){

	// size_t core_id = snrt_cluster_compute_core_idx();
	// if(core_id == 0){

	//   	//real values
	//     snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	//     snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	//     snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, c);
	// 	snrt_ssr_enable();
														
	// 	asm volatile(
	// 		"frep.o %[n_frep], 3, 0, 0 \n"
	// 		"fmul.d ft3, ft0, ft1 \n"
	// 		"fmul.d ft4, ft0, ft1 \n"
	// 		"fsub.d ft2, ft3, ft4 \n"
	// 		:	
	// 		:	[ n_frep ] "r"((size / 2) - 1)
	// 		:	"ft0","ft1","ft2","ft3","ft4");
		
	// 	snrt_ssr_disable();

	// 	//imaginary values pt1	
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size / 2 ,16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 8);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[1]);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, d);
	// 	snrt_ssr_enable();

	// 	asm volatile(
	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 		"fmul.d ft2, ft0, ft1 \n"
	// 		:
	// 		:	[ n_frep ] "r"((size / 2) - 1)
	// 		:	"ft0","ft1","ft2");
		
	// 	snrt_ssr_disable();

	// 	//imaginary values pt2
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size / 2 ,16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 8);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[1]);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, e);
	// 	snrt_ssr_enable();			
		
	// 	asm volatile(
	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 		"fmul.d ft2, ft0, ft1 \n"
	// 		:
	// 		:	[ n_frep ] "r"((size / 2) - 1)
	// 		:	"ft0","ft1","ft2");
		
	// 	snrt_ssr_disable();

	// 	//imaginary values pt3
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size / 2 ,8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, d);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, e);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[1]);
	// 	snrt_ssr_enable();			
		
	// 	asm volatile(
	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 		"fadd.d ft2, ft0, ft1 \n"
	// 		:
	// 		:	[ n_frep ] "r"((size / 2) - 1)
	// 		:	"ft0","ft1","ft2");
		
	// 	snrt_ssr_disable();
	// }
	// snrt_cluster_hw_barrier();





	// size_t core_id = snrt_cluster_compute_core_idx();
	// if(core_id == 0){

	//   	//real values
	//     snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size, 8);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	//     snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	//     snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, c);
	// 	snrt_ssr_enable();

	// 	register double d0 = 0;
														
	// 	asm volatile(
	// 		"frep.o %[n_frep], 10, 0, 0 \n"
	// 		"fadd.d ft3, ft0, %[d0] \n"   	//a0
	// 		"fadd.d ft4, ft1, %[d0] \n"		//b0
	// 		"fadd.d ft5, ft0, %[d0] \n"		//a1
	// 		"fadd.d ft6, ft1, %[d0] \n"		//b1
	// 		"fmul.d ft7, ft3, ft4 \n"
	// 		"fmul.d ft8, ft5, ft6 \n"
	// 		"fsub.d ft2, ft7, ft8 \n"
	// 		"fmul.d ft7, ft3, ft6 \n"
	// 		"fmul.d ft8, ft4, ft5 \n"
	// 		"fadd.d ft2, ft7, ft8 \n"
	// 		:	[ d0 ] "+f"(d0)
	// 		:	[ n_frep ] "r"((size / 2) - 1)
	// 		:	"ft0","ft1","ft2","ft3","ft4","ft5","ft6","ft7","ft8");
		
	// 	snrt_ssr_disable();
	// }
	// snrt_cluster_hw_barrier();




	// improved version

	size_t core_id = snrt_cluster_compute_core_idx();
	if(core_id == 0){

	  	//real values
	    snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM2, size, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	    snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, c);
		snrt_ssr_enable();

														
		asm volatile(
			"frep.o %[n_frep], 10, 0, 0 \n"
			"fmv.d ft3, ft0 \n"   		//a0
			"fmv.d ft4, ft1 \n"			//b0
	 		"fmv.d ft5, ft0 \n"			//a1
	 		"fmv.d ft6, ft1 \n"			//b1
			"fmul.d ft7, ft3, ft4 \n"
			"fmul.d ft8, ft5, ft6 \n"
	 		"fsub.d ft2, ft7, ft8 \n"
			"fmul.d ft7, ft3, ft6 \n"
			"fmul.d ft8, ft4, ft5 \n"
	 		"fadd.d ft2, ft7, ft8 \n"
			:	
			:	[ n_frep ] "r"((size / 2) - 1)
			:	"ft0","ft1","ft2","ft3","ft4","ft5","ft6","ft7","ft8");
		
		snrt_ssr_disable();
	}
	snrt_cluster_hw_barrier();


}


