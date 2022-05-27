#include "parallel_complex_add.h"
#include "snrt.h"


void addition_baseline_p(double *a, double *b, double *c, uint32_t size){

	if(snrt_is_compute_core() == 1){
		size_t core_id = snrt_cluster_compute_core_idx();

	   	uint32_t size_per_core = size / 8;					// here we can do it individually
	   	uint32_t core_start = core_id * size_per_core;
	   	uint32_t core_end = core_start + size_per_core;
	   	uint8_t rest = size % 8;

		for(uint32_t i = core_start; i < core_end; i++){
			c[i] = a[i] + b[i];
		}

	  //   if(rest >= 0 && core_id == 7){							// calculate the rest
	  //   	for(uint32_t i = core_end; i < size; i++){
		 //    	c[i] = a[i] + b[i];
			// }
	  //   }
	}

   	snrt_cluster_hw_barrier();
}


void addition_ssr_p(double *a, double *b, double *c, uint32_t size){

	if(snrt_is_compute_core() == 1){
		size_t core_id = snrt_cluster_compute_core_idx();
	   	uint32_t size_per_core = size / 8;					
	   	uint32_t core_start = core_id * size_per_core;
	   	uint32_t core_end = core_start + size_per_core;

	   	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	   	snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	   	snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core, 8);
	   	snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
		snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
		snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start]);
		snrt_ssr_enable();
			
		for(uint32_t  i = core_start; i < core_end; i++){
			//register double c0 = c[i];
			asm volatile(
				//"fadd.d %[c0], ft0, ft1 \n"
				"fadd.d ft2, ft0, ft1 \n"
				:	//[ c0 ] "+f"(c0)
				:
				:	"ft0","ft1","ft2");
			//c[i] = c0;
		}

		// uint8_t rest = size % 8;							
	 //   	if(rest >= 0 && core_id == 7){	
	 //    	for(uint32_t  i = core_end; i < size; i++){
		// 		register double c0 = c[i];
		// 		asm volatile(
		// 			"fadd.d %[c0], ft0, ft1 \n"
		// 			:	[ c0 ] "+f"(c0)
		// 			:
		// 			:	"ft0","ft1");
		// 		c[i] = c0;
		// 	}
	 //   	}
	   	snrt_ssr_disable();
	}
   	snrt_cluster_hw_barrier();
}


void addition_ssr_frep_p(double *a, double *b, double *c, uint32_t size){

	if(snrt_is_compute_core() == 1){
		size_t core_id = snrt_cluster_compute_core_idx();
	   	uint32_t size_per_core = size / 8;					
	   	uint32_t core_start = core_id * size_per_core;
	   	uint32_t core_end = core_start + size_per_core;

	   	snrt_ssr_loop_1d(SNRT_SSR_DM0, size_per_core, 8);
	   	snrt_ssr_loop_1d(SNRT_SSR_DM1, size_per_core, 8);
	   	snrt_ssr_loop_1d(SNRT_SSR_DM2, size_per_core, 8);
	   	snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, &a[core_start]);
		snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, &b[core_start]);
		snrt_ssr_write(SNRT_SSR_DM2, SNRT_SSR_1D, &c[core_start]);
		snrt_ssr_enable();  
			
		asm volatile(
				"frep.o %[n_frep], 1, 0, 0 \n"
				"fadd.d ft2, ft0, ft1 \n"
				:	
				:	[ n_frep ] "r"(size_per_core - 1)
				:	"ft0", "ft1", "ft2");

		// uint8_t rest = size % 8;							
	 //   	if(rest >= 0 && core_id == 7){	
	 //    	asm volatile(
		// 		"frep.o %[n_frep], 1, 0, 0 \n"
		// 		"fadd.d ft2, ft0, ft1 \n"
		// 		:	
		// 		:	[ n_frep ] "r"(rest - 1)
		// 		:	"ft0", "ft1", "ft2");
	 //   	}
		snrt_ssr_disable();
	}

	snrt_cluster_hw_barrier();
}