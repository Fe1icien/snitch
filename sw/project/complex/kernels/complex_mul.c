#include <complex_mul.h>


void multiplication_baseline(double *a, double *b, double *c, uint32_t size){

    for(uint32_t  i = 0; i < size; i += 2){
	    c[i] = a[i] * b[i] - a[i + 1] * b[i + 1];
        c[i + 1] = a[i] * b[i + 1] + a[i + 1] * b[i];
	}

}


void multiplication_ssr(double *a, double *b, double *c, uint32_t size){

    register volatile double ft0 asm("ft0");		
    register volatile double ft1 asm("ft1");
	asm volatile("" : "=f"(ft0), "=f"(ft1));

  
    snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	snrt_ssr_enable();
		
	for(uint32_t  i = 0; i < size; i += 2){				//real values
		register double c0 = c[i];
		asm volatile(
			"fmul.d ft3, ft0, ft1 \n"
			"fmul.d ft4, ft0, ft1 \n"
			"fsub.d %[c0], ft3, ft4 \n"
			:	[ c0 ] "+f"(c0)
			:
			:	"ft0","ft1","ft3","ft4");

		c[i] = c0;
	}

	

	snrt_ssr_disable();

	

	snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
    snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 16);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	snrt_ssr_read(SNRT_SSR_DM2, SNRT_SSR_1D, &b[1]);
	snrt_ssr_enable();

	for(uint32_t  i = 1; i < size; i += 2){				//imaginary values
		register double c0 = c[i];	
		asm volatile(
			"fmul.d ft3, ft0, ft2 \n"
			"fmul.d ft4, ft0, ft1 \n"
			"fadd.d %[c0], ft3, ft4 \n"
			:	[ c0 ] "+f"(c0)
			:
			:	"ft0","ft1","ft2","ft3","ft4");

		c[i] = c0;
	}

	

	snrt_ssr_disable();

}


void multiplication_ssr_frep(double *a, double *b, double *c, uint32_t size){

	register volatile double ft0 asm("ft0");		
    register volatile double ft1 asm("ft1");
	asm volatile("" : "=f"(ft0), "=f"(ft1));

  
    snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size, 8);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
    snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	snrt_ssr_enable();
													
	register double c0 = c[i];				//real values
	asm volatile(
		"frep.o %[n_frep], 1, 0, 0 \n"
		"fmul.d ft3, ft0, ft1 \n"
		"fmul.d ft4, ft0, ft1 \n"
		"fsub.d %[c0], ft3, ft4 \n"
		:	[ c0 ] "+f"(c0)
		:	[ n_frep ] "r"(size / 2)
		:	"ft0","ft1","ft3","ft4");
	

	c[i] = c0;

	snrt_ssr_disable();



	snrt_ssr_loop_1d(SNRT_SSR_DM0, size, 8);
    snrt_ssr_loop_1d(SNRT_SSR_DM1, size / 2, 16);
    snrt_ssr_loop_1d(SNRT_SSR_DM2, size / 2, 16);
    snrt_ssr_read(SNRT_SSR_DM0, SNRT_SSR_1D, a);
	snrt_ssr_read(SNRT_SSR_DM1, SNRT_SSR_1D, b);
	snrt_ssr_read(SNRT_SSR_DM2, SNRT_SSR_1D, &b[1]);
	snrt_ssr_enable();

				
	register double c0 = c[i];				//imaginary values
	asm volatile(
		"frep.o %[n_frep], 1, 0, 0 \n"
		"fmul.d ft3, ft0, ft2 \n"
		"fmul.d ft4, ft0, ft1 \n"
		"fadd.d %[c0], ft3, ft4 \n"
		:	[ c0 ] "+f"(c0)
		:	[ n_frep ] "r"(size / 2)
		:	"ft0","ft1","ft2","ft3","ft4");
	

	c[i] = c0;

	snrt_ssr_disable();

}

