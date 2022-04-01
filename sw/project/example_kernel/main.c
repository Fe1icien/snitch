#include "data.h"
#include "kernel.h"
#include <stdio.h>
#include <stdlib.h>


int main(){

	// create pointers
	double* ptr_a;
	double* ptr_b;
	double* ptr_result;
	double* ptr_kernel_result;

	ptr_a = (double*) a;
	ptr_b = (double*) b;
	ptr_result = (double*) result;
	double kernel_result [size];
	ptr_kernel_result = (double*) kernel_result;


	/*
	printf("value: %f\n" , *ptr_a);
	printf("value: %f\n" , *ptr_b);
	printf("value: %f\n" , *ptr_result);
	printf("value: %d\n" , size);
	*/


	kernel(ptr_a, ptr_b, ptr_kernel_result, size);
	


	//count errors
	uint32_t errors = 0;

	for(int i = 0; i < size; i++){
		if(-0.00001 < (result[i] - kernel_result[i]) < 0.00001){    //rounding to 0.00001 ???
			errors++;
		}
	}
	//printf("%d\n",errors);

	return errors;
}