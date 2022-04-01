#include <stdio.h>
#include <stdlib.h>
#include <kernels/complex_add.h>
#include <kernels/complex_mul.h>
#include <kernels/complex_polar.h>
#include <complex_data.h>


int main(){

	// complex_data.h arrays
	double* ptr_a = (double*) a;
	double* ptr_b = (double*) b;
	double* ptr_add_array = (double*) add_array;
	double* ptr_mul_array = (double*) mul_array;
	double* ptr_polar_array = (double*) polar_array;

	//kernel calculation result arrays
	double add_result [size];
	double mul_result [size];
	double polar_result [size];

	double* ptr_add_result = (double*) add_result;
	double* ptr_mul_result = (double*) mul_result;
	double* ptr_polar_result = (double*) polar_result;

	
	
	//printf("%f\n",*ptr_polar_array);

	return 0;
}