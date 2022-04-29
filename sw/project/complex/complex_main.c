#include <stdio.h>
#include <stdlib.h>
#include "kernels/complex_add.h"
#include "kernels/complex_mul.h"
#include "kernels/complex_polar.h"
//#include "parallel_kernels/parallel_complex_add.h"
#include "complex_data.h"
#include <math.h>



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
	double result_d [(size / 2) + 1];
	double result_e [(size / 2) + 1];
	double result_g [(size / 2)];
	double result_f [size];

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
	//multiplication_ssr_frep(a, b, mul_result, result_d, result_e, size);

	//polar_baseline(a, polar_result, size);
	//polar_ssr(a, polar_result, result_f, size);
	polar_ssr_frep(a, polar_result, result_f, result_g, size);


	
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

	uint32_t polar_errors = 0;
	for(int i = 0; i < size; i++){
		if(fabs(polar_array[i] - polar_result[i]) > 0.01){    //rounding to 0.01 (maybe have to reduce it to 0.1 accuracy)
			polar_errors++;
		}
	}

	// uint32_t polar_errors = 0;
	// if(fabs(polar_result[3]) > 0.81){    
	// 	polar_errors++;								
	// }
	// if(result_f[3] == 1){    
	// 	polar_errors++;								
	// }
	// if(result_f[2] > 1.05){    
	// 	polar_errors++;								
	// }

	//return add_errors;
	//return mul_errors;
	return polar_errors;
}