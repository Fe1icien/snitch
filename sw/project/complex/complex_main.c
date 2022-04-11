#include <stdio.h>
#include <stdlib.h>
#include "kernels/complex_add.h"
#include "kernels/complex_mul.h"
#include "kernels/complex_polar.h"
#include "complex_data.h"


int main(){

	// complex_data.h arrays
	// double* ptr_a = (double*) a;
	// double* ptr_b = (double*) b;
	// double* ptr_add_array = (double*) add_array;
	// double* ptr_mul_array = (double*) mul_array;
	// double* ptr_polar_array = (double*) polar_array;

	//kernel calculation result arrays
	double add_result [size];
	double mul_result [size];
	double polar_result [size];
	double result_d [size / 2];
	double result_e [size / 2];

	// double* ptr_add_result = (double*) add_result;
	// double* ptr_mul_result = (double*) mul_result;
	// double* ptr_polar_result = (double*) polar_result;
	// double* ptr_polar_result_d = (double*) polar_result_d;
	// double* ptr_polar_result_e = (double*) polar_result_e;


	//addition_baseline(a, b, add_result, size);
	//addition_ssr(a, b, add_result, size);
	//addition_ssr_frep(a, b, add_result, size);


	//multiplication_baseline(a, b, mul_result, size);
	//multiplication_ssr(a, b, mul_result, size);
	multiplication_ssr_frep(a, b, mul_result, result_d, result_e, size);


	
	uint32_t add_errors = 0;
	for(int i = 0; i < size; i++){
		if(fabs(add_array[i] - add_result[i]) > 0.00001){    //rounding to 0.00001
			add_errors++;
		}
	}

	uint32_t mul_errors = 0;
	for(int i = 0; i < size; i++){
		if(fabs(mul_array[i] - mul_result[i]) > 0.00001){    //rounding to 0.00001
			mul_errors++;
		}
	}

	// uint32_t polar_errors = 0;
	// for(int i = 0; i < size; i++){
	// 	if(fabs(polar_array[i] - polar_result[i]) > 0.00001){    //rounding to 0.00001
	// 		polar_errors++;
	// 	}
	// }
	
	

	//return add_errors;
	return mul_errors;
	//return add_errors + mul_errors + polar_errors;
}