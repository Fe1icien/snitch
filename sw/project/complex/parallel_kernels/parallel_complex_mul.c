#include "parallel_complex_mul.h"
#include "snrt.h"
#include "printf.h"


void multiplication_baseline_p(double *a, double *b, double *c, uint32_t size){


	if (snrt_is_compute_core() == 1){
		size_t core_id = snrt_cluster_compute_core_idx();

	  	// split pointer to as many cores as possible
		uint32_t size_h = size / 2;
	  	uint32_t size_per_core_h = size_h / 8;					// min 2 for each core because of real and img part
	  	uint32_t size_per_core = size_per_core_h * 2;
	  	uint32_t core_start = core_id * size_per_core;
	  	uint32_t core_end = core_start + size_per_core;
	  	

	    for(uint32_t  i = core_start; i < core_end; i += 2){
		    c[i] = a[i] * b[i] - a[i + 1] * b[i + 1];
	        c[i + 1] = a[i] * b[i + 1] + a[i + 1] * b[i];
		}

		// uint8_t rest = size % 16;							// calculate the rest
	 //  	if(rest >= 0 && core_id == 7){	
	 //    	for(uint32_t i = core_end; i < size; i += 2){
		//     	c[i] = a[i] * b[i] - a[i + 1] * b[i + 1];
	 //        	c[i + 1] = a[i] * b[i + 1] + a[i + 1] * b[i];
		// 	}
	 //  	}
	}
  	snrt_cluster_hw_barrier();

}


void multiplication_ssr_p(double *a, double *b, double *c, uint32_t size){

	// if (snrt_is_compute_core() == 1){
	// 	size_t core_id = snrt_cluster_compute_core_idx();
	// 	uint32_t size_h = size / 2;
	//   	uint32_t size_per_core_h = size_h / 8;			
	//   	uint32_t size_per_core = size_per_core_h * 2;
	//   	uint32_t core_start = core_id * size_per_core;
	//   	uint32_t core_end = core_start + size_per_core;

	//     register volatile double ft0 asm("ft0");		
	//     register volatile double ft1 asm("ft1");
	// 	asm volatile("" : "=f"(ft0), "=f"(ft1));

	  
	//     snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	//     snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	// 	snrt_ssr_enable();
			
	// 	for(uint32_t  i = core_start; i < core_end; i += 2){				//real values
	// 		register double c0 = c[i];
	// 		asm volatile(
	// 			"fmul.d ft3, ft0, ft1 \n"
	// 			"fmul.d ft4, ft0, ft1 \n"
	// 			"fsub.d %[c0], ft3, ft4 \n"
	// 			:	[ c0 ] "+f"(c0)
	// 			:
	// 			:	"ft0","ft1","ft3","ft4");

	// 		c[i] = c0;
	// 	}

	// 	// uint8_t rest = size % 16;							
	//  //    if(rest >= 0 && core_id == 7){	
	//  //    	for(uint32_t  i = core_end; i < size; i += 2){
	// 	// 		register double c0 = c[i];
	// 	// 		asm volatile(
	// 	// 			"fmul.d ft3, ft0, ft1 \n"
	// 	// 			"fmul.d ft4, ft0, ft1 \n"
	// 	// 			"fsub.d %[c0], ft3, ft4 \n"
	// 	// 			:	[ c0 ] "+f"(c0)
	// 	// 			:
	// 	// 			:	"ft0","ft1","ft3","ft4");

	// 	// 		c[i] = c0;
	// 	// 	}
	//  //  	}

	//   	//snrt_cluster_hw_barrier();
	//   	snrt_ssr_disable();

		
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	// 	snrt_ssr_read(SNRT_SSR_DM2, SNRT_SSR_1D, &b[core_start + 1]);
	// 	snrt_ssr_enable();

	// 	for(uint32_t  i = (core_start + 1); i < core_end; i += 2){				//imaginary values
	// 		register double c0 = c[i];	
	// 		asm volatile(
	// 			"fmul.d ft3, ft0, ft2 \n"
	// 			"fmul.d ft4, ft0, ft1 \n"
	// 			"fadd.d %[c0], ft3, ft4 \n"
	// 			:	[ c0 ] "+f"(c0)
	// 			:
	// 			:	"ft0","ft1","ft2","ft3","ft4");

	// 		c[i] = c0;
	// 	}
								
	//   //   if(rest >= 0 && core_id == 7){	
	//   //   	for(uint32_t  i = (core_end + 1); i < size; i += 2){
	// 		// 	register double c0 = c[i];
	// 		// 	asm volatile(
	// 		// 		"fmul.d ft3, ft0, ft2 \n"
	// 		// 		"fmul.d ft4, ft0, ft1 \n"
	// 		// 		"fadd.d %[c0], ft3, ft4 \n"
	// 		// 		:	[ c0 ] "+f"(c0)
	// 		// 		:
	// 		// 		:	"ft0","ft1","ft2","ft3","ft4");

	// 		// 	c[i] = c0;
	// 		// }
	//   // 	}

	// 	snrt_ssr_disable();

	// }
	// snrt_cluster_hw_barrier();














	if (snrt_is_compute_core() == 1){
		size_t core_id = snrt_cluster_compute_core_idx();
		uint32_t size_h = size / 2;
	  	uint32_t size_per_core_h = size_h / 8;			
	  	uint32_t size_per_core = size_per_core_h * 2;
	  	uint32_t core_start = core_id * size_per_core;
	  	uint32_t core_end = core_start + size_per_core;
	  
	    snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	    snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start]);
		snrt_ssr_enable();
			
		for(uint32_t  i = core_start; i < core_end; i += 2){				
			// register double c0;
			// register double c1;
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

			// c[i] = c0;
			// c[i + 1] = c1;
		}
	  	snrt_ssr_disable();
	}
	snrt_cluster_hw_barrier();
}


void multiplication_ssr_frep_p(double *a, double *b, double *c, uint32_t size){

	// size_t core_id = snrt_cluster_compute_core_idx();
	// uint32_t size_h = size / 2;
	// uint32_t size_per_core_h = size_h / 8;			
	// uint32_t size_per_core = size_per_core_h * 2;
	// uint32_t core_start = core_id * size_per_core;
	// uint32_t core_end = core_start + size_per_core;
	// uint8_t rest = size % 16;

	// if (snrt_is_compute_core() == 1){

	// 	register volatile double ft0 asm("ft0");		
	// 	register volatile double ft1 asm("ft1");
	// 	register volatile double ft2 asm("ft2");
	// 	asm volatile("" : "=f"(ft0), "=f"(ft1), "=f"(ft2));

	//   	//real values
	//     snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	//     snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	//     snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start]);
	// 	snrt_ssr_enable();
														
	// 	asm volatile(
	// 		"frep.o %[n_frep], 3, 0, 0 \n"
	// 		"fmul.d ft3, ft0, ft1 \n"
	// 		"fmul.d ft4, ft0, ft1 \n"
	// 		"fsub.d ft2, ft3, ft4 \n"
	// 		:	
	// 		:	[ n_frep ] "r"((size_per_core / 2) - 1)
	// 		:	"ft0","ft1","ft2","ft3","ft4");
							
	//   	// if(rest >= 0 && core_id == 7){
	// 	  //   asm volatile(
	// 			// "frep.o %[n_frep], 3, 0, 0 \n"
	// 			// "fmul.d ft3, ft0, ft1 \n"
	// 			// "fmul.d ft4, ft0, ft1 \n"
	// 			// "fsub.d ft2, ft3, ft4 \n"
	// 			// :	
	// 			// :	[ n_frep ] "r"((rest / 2) - 1)
	// 			// :	"ft0","ft1","ft2","ft3","ft4");
		    
	//   	// }
	//   	snrt_ssr_disable();

	// }	
	// snrt_cluster_hw_barrier();

	// if (snrt_is_compute_core() == 1){

	// 	//imaginary values pt1
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 8);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start + 1]);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &d[core_start / 2]);
	// 	snrt_ssr_enable();

	// 	asm volatile(
	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 		"fmul.d ft2, ft0, ft1 \n"
	// 		:
	// 		:	[ n_frep ] "r"((size_per_core / 2) - 1)
	// 		:	"ft0","ft1","ft2");
								
	//   	// if(rest >= 0 && core_id == 7){	
	//    //  	asm volatile(
	// 			// "frep.o %[n_frep], 1, 0, 0 \n"
	// 			// "fmul.d ft2, ft0, ft1 \n"
	// 			// :	
	// 			// :	[ n_frep ] "r"((rest / 2) - 1)
	// 			// :	"ft0", "ft1", "ft2");
	//   	// }
	// 	snrt_ssr_disable();
	// }
	// snrt_cluster_hw_barrier();

	// if (snrt_is_compute_core() == 1){
	// 	//imaginary values pt2
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core / 2 ,16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core / 2, 16);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 8);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start + 1]);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &e[core_start / 2]);
	// 	snrt_ssr_enable();			
		
	// 	asm volatile(
	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 		"fmul.d ft2, ft0, ft1 \n"
	// 		:
	// 		:	[ n_frep ] "r"((size_per_core / 2) - 1)
	// 		:	"ft0","ft1","ft2");

	// 	// if(rest >= 0 && core_id == 7){	
	//  //    	asm volatile(
	// 	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 	// 		"fmul.d ft2, ft0, ft1 \n"
	// 	// 		:	
	// 	// 		:	[ n_frep ] "r"((rest / 2) - 1)
	// 	// 		:	"ft0", "ft1", "ft2");
	//  //  	}
	// 	snrt_ssr_disable();
	// }
	// snrt_cluster_hw_barrier();

	// if (snrt_is_compute_core() == 1){
	// 	//imaginary values pt3
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core / 2 ,8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core / 2, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &d[core_start / 2]);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &e[core_start / 2]);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start + 1]);
	// 	snrt_ssr_enable();			
		
	// 	asm volatile(
	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 		"fadd.d ft2, ft0, ft1 \n"
	// 		:
	// 		:	[ n_frep ] "r"((size_per_core / 2) - 1)
	// 		:	"ft0","ft1","ft2");

	// 	// if(rest >= 0 && core_id == 7){	
	//  //    	asm volatile(
	// 	// 		"frep.o %[n_frep], 1, 0, 0 \n"
	// 	// 		"fadd.d ft2, ft0, ft1 \n"
	// 	// 		:	
	// 	// 		:	[ n_frep ] "r"((rest / 2) - 1)
	// 	// 		:	"ft0", "ft1", "ft2");
	//  //  	}
		
	// 	snrt_ssr_disable();

	// }
	// snrt_cluster_hw_barrier();





	// size_t core_id = snrt_cluster_compute_core_idx();
	// uint32_t size_h = size / 2;
	// uint32_t size_per_core_h = size_h / 8;			
	// uint32_t size_per_core = size_per_core_h * 2;
	// uint32_t core_start = core_id * size_per_core;
	// uint32_t core_end = core_start + size_per_core;
	// uint8_t rest = size % 16;

	// if (snrt_is_compute_core() == 1){

	// 	register volatile double ft0 asm("ft0");		
	// 	register volatile double ft1 asm("ft1");
	// 	register volatile double ft2 asm("ft2");
	// 	asm volatile("" : "=f"(ft0), "=f"(ft1), "=f"(ft2));

	//   	//real values
	//     snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	//     snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	//     snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start]);
	// 	snrt_ssr_enable();
														
	// 	asm volatile(
	// 		"frep.o %[n_frep], 3, 0, 0 \n"
	// 		"fmul.d ft3, ft0, ft1 \n"
	// 		"fmul.d ft4, ft0, ft1 \n"
	// 		"fsub.d ft2, ft3, ft4 \n"
	// 		:	
	// 		:	[ n_frep ] "r"((size_per_core / 2) - 1)
	// 		:	"ft0","ft1","ft2","ft3","ft4");
							

	//   	snrt_ssr_disable();

	// }	
	// snrt_cluster_hw_barrier();

	// if (snrt_is_compute_core() == 1){

	// 	//imaginary values
	// 	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	//     snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core / 2, 16);
	//     snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	// 	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	// 	snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start + 1]);
	// 	snrt_ssr_enable();

	// 	register double d0 = 0;

	// 	asm volatile(
	// 		"frep.o %[n_frep], 4, 0, 0 \n"
	// 		"fadd.d ft3, ft1, %[d0] \n"
	// 		"fmul.d ft4, ft0, ft1 \n"
	// 		"fmul.d ft5, ft0, ft3 \n"
	// 		"fadd.d ft2, ft4, ft5 \n"
	// 		:	[ d0 ] "+f"(d0) 
	// 		:	[ n_frep ] "r"((size_per_core / 2) - 1)
	// 		:	"ft0","ft1","ft2","ft3","ft4","ft5");
								

	// 	snrt_ssr_disable();
	// }
	
	// snrt_cluster_hw_barrier();









	size_t core_id = snrt_cluster_compute_core_idx();
	uint32_t size_h = size / 2;
	uint32_t size_per_core_h = size_h / 8;			
	uint32_t size_per_core = size_per_core_h * 2;
	uint32_t core_start = core_id * size_per_core;
	uint32_t core_end = core_start + size_per_core;
	uint8_t rest = size % 16;

	if (snrt_is_compute_core() == 1){

		// register volatile double ft0 asm("ft0");		
		// register volatile double ft1 asm("ft1");
		// register volatile double ft2 asm("ft2");
		// asm volatile("" : "=f"(ft0), "=f"(ft1), "=f"(ft2));
		// register double d0 = 0;

	  	//real values
	    snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	    snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core, 8);
	    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
	    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
	    snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start]);
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
			:	//[ d0 ] "+f"(d0)
			:	[ n_frep ] "r"((size_per_core / 2) - 1)
			:	"ft0","ft1","ft2","ft3","ft4","ft5","ft6","ft7","ft8");
							

	  	snrt_ssr_disable();

	}	
	snrt_cluster_hw_barrier();
}
