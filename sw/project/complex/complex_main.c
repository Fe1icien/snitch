#include <stdio.h>
#include <stdlib.h>
#include "kernels/complex_add.h"
#include "kernels/complex_mul.h"
#include "kernels/complex_polar.h"
#include "parallel_kernels/parallel_complex_add.h"
#include "parallel_kernels/parallel_complex_mul.h"
#include "parallel_kernels/parallel_complex_polar.h"
#include "complex_data.h"
#include <math.h>
#include "printf.h"
#include "snrt.h"
#include "kernels/lut/sqrt_lookuptable.h"
#include "kernels/lut/atan_lookuptable.h"
#include "../../vendor/riscv-opcodes/encoding.h"



double *share_ptr;
uint32_t benchmark_get_cycle() { return read_csr(mcycle); }


int main(){

	
	double *ptr, *ptr_a, *ptr_b, *ptr_c, *ptr_d, *ptr_e, *ptr_f, *ptr_add, *ptr_mul, *ptr_polar, *ptr_lookup, *ptr_lookup2;

	uint32_t dm_id = snrt_cluster_dm_core_idx();
	uint32_t core_id = snrt_cluster_compute_core_idx();


	uint8_t which_calculation = 2;
	uint32_t add_errors = 0;
	uint32_t mul_errors = 0;
	uint32_t polar_errors = 0;





	// ADDITION BLOCK

	if(which_calculation == 0){

		uint32_t total_size = 4 * size;

		if(snrt_is_dm_core()){
			ptr = snrt_l1alloc(total_size * 8);
			share_ptr = ptr;
		}

		snrt_cluster_hw_barrier();

		ptr = share_ptr;

		ptr_a = ptr;
		ptr += size;

		ptr_b = ptr;
		ptr += size;

		ptr_c = ptr;
		ptr += size;

		ptr_add = ptr;


		// EXPERIMENT

		//	double *ptr_exp;
		// ptr += size;
		// ptr_exp = ptr;

		// double exp[4][2] = {{1.0, 2.0}, {3.0, 4.0}, {5.0, 6.0}, {10.0, 11.0}};

		//ptr = snrt_dma_start_2d(ptr_exp, exp, 64, 1, 2, 1);

		// if(core_id == 0){
		// 	for(int i = 0; i < 8; i++){
		// 		printf("%f\n",ptr_exp[i]);
		// 	}
		// }

		// END EXPERIMENT


		if (snrt_is_dm_core()){
			ptr = snrt_dma_start_1d(ptr_a, a, size * 8);
			ptr = snrt_dma_start_1d(ptr_b, b, size * 8);
			ptr = snrt_dma_start_1d(ptr_add, add_array, size * 8);
			
			snrt_dma_wait_all();
		}

		snrt_cluster_hw_barrier();
		benchmark_get_cycle();
		
		//addition_baseline(ptr_a, ptr_b, ptr_c, size);				// single core
		//addition_ssr(ptr_a, ptr_b, ptr_c, size);
		//addition_ssr_frep(ptr_a, ptr_b, ptr_c, size);

		//addition_baseline_p(ptr_a, ptr_b, ptr_c, size);			// 8 cores
		addition_ssr_p(ptr_a, ptr_b, ptr_c, size);
		//addition_ssr_frep_p(ptr_a, ptr_b, ptr_c, size);

		benchmark_get_cycle();
		// if(core_id == 0){
		// 	for(int i = 0; i < size; i++){
		// 		printf(">%f\n", ptr_c[i]);
		// 		printf("%f\n", ptr_add[i]);
		// 		printf("\n");
		// 	}
		// }

		for(int i = 0; i < size; i++){
			if(fabs(ptr_add[i] - ptr_c[i]) > 0.0001){    //rounding to 0.0001
				add_errors++;
			}
		}
	}


	// MULTIPLICATION BLOCK

	if(which_calculation == 1){

		uint32_t total_size = 5 * size;

		if(snrt_is_dm_core()){
			ptr = snrt_l1alloc(total_size * 8);
			share_ptr = ptr;
		}

		snrt_cluster_hw_barrier();

		ptr = share_ptr;

		ptr_a = ptr;
		ptr += size;

		ptr_b = ptr;
		ptr += size;

		ptr_c = ptr;
		ptr += size;

		// ptr_d = ptr;
		// ptr += (size / 2);

		// ptr_e = ptr;
		// ptr += (size / 2);

		ptr_mul = ptr;


		if (snrt_is_dm_core()){
			ptr = snrt_dma_start_1d(ptr_a, a, size * 8);
			ptr = snrt_dma_start_1d(ptr_b, b, size * 8);
			ptr = snrt_dma_start_1d(ptr_mul, mul_array, size * 8);
			snrt_dma_wait_all();
		}

		snrt_cluster_hw_barrier();
		benchmark_get_cycle();

		//multiplication_baseline(ptr_a, ptr_b, ptr_c, size);
		//multiplication_ssr(ptr_a, ptr_b, ptr_c, size);
		//multiplication_ssr_frep(ptr_a, ptr_b, ptr_c, ptr_d, ptr_e, size);
		//multiplication_ssr_frep(ptr_a, ptr_b, ptr_c, size);

		//multiplication_baseline_p(ptr_a, ptr_b, ptr_c, size);
		multiplication_ssr_p(ptr_a, ptr_b, ptr_c, size);
		//multiplication_ssr_frep_p(ptr_a, ptr_b, ptr_c, size);
		//multiplication_ssr_frep_p(ptr_a, ptr_b, ptr_c, ptr_d, ptr_e, size);
	
		benchmark_get_cycle();

		// if(snrt_is_dm_core()){
		// 	for(int i = 0; i < size; i++){
		// 		printf(">%f\n", ptr_c[i]);
		// 		printf("%f\n", ptr_mul[i]);
		// 		printf("\n");
		// 	}
		// }

		for(int i = 0; i < size; i++){
			if(fabs(ptr_mul[i] - ptr_c[i]) > 0.0001){    //rounding to 0.0001
				mul_errors++;
			}
		}
	}


	// POLAR BLOCK

	if(which_calculation == 2){

		uint32_t total_size = 4 * size + (size / 2) + 452 + 182;

		if(snrt_is_dm_core()){
			ptr = snrt_l1alloc(total_size * 8);
			share_ptr = ptr;
		}

		snrt_cluster_hw_barrier();

		ptr = share_ptr;

		ptr_a = ptr;
		ptr += size;

		ptr_c = ptr;
		ptr += size;

		ptr_d = ptr;
		ptr += size;

		ptr_e = ptr;
		ptr += (size / 2);

		ptr_polar = ptr;
		ptr += size;

		ptr_lookup = ptr;
		ptr += 452;

		ptr_lookup2 = ptr;


		if (snrt_is_dm_core()){
			ptr = snrt_dma_start_1d(ptr_a, a, size * 8);
			ptr = snrt_dma_start_1d(ptr_polar, polar_array, size * 8);
			ptr = snrt_dma_start_1d(ptr_lookup, lookup, 452 * 8);
			ptr = snrt_dma_start_1d(ptr_lookup2, lookup2, 182 * 8);
			snrt_dma_wait_all();
		}

		snrt_cluster_hw_barrier();
		benchmark_get_cycle();

		//polar_baseline(ptr_a, ptr_c, size);
		//polar_ssr(ptr_a, ptr_c, ptr_d, ptr_lookup, ptr_lookup2, size);
		//polar_ssr_frep(ptr_a, ptr_c, ptr_d, ptr_e, ptr_lookup, ptr_lookup2, size);

		//polar_baseline_p(ptr_a, ptr_c, size);
		//polar_ssr_p(ptr_a, ptr_c, ptr_d, ptr_lookup, ptr_lookup2, size);
		polar_ssr_frep_p(ptr_a, ptr_c, ptr_d, ptr_e, ptr_lookup, ptr_lookup2, size);

		benchmark_get_cycle();

		// if(snrt_is_dm_core()){
		// 	for(int i = 0; i < size; i++){
		// 		printf(">%f\n", ptr_c[i]);
		// 		printf("%f\n", ptr_polar[i]);
		// 		printf("\n");
		// 	}
		// }

		// for(int i = 0; i < size; i++){
		// 	if(fabs(ptr_polar[i] - ptr_c[i]) > 0.03){    //rounding to 0.03
		// 		polar_errors++;
		// 		printf("%d\n", i);
		// 	}
		// }
	}
	

	return add_errors + mul_errors + polar_errors;
}