#include <stdio.h>
#include <stdlib.h>
#include "lut/sqrt_lookuptable.h"
#include <math.h>

int main(){
    

    double a = 4.0;
    double b = 4.0;
    double c;
    double d;
	double f;
    uint32_t e;


	for(uint8_t i = 0; i < 10; i++){


		
		c = (a*a) + (b*b);

		d = sqrt(c);

		
		if(c < 1){
			e = (int) ((c * 50) + 0.5);
			f = lookup[e];
		}
		else if(c < 10){
			e = (int) ((c * 10) + 0.5);
			f = lookup[e - 10 + 50];
		}
		else if(c < 50){
			e = (int) (c + 0.5);
			f = lookup[e - 10 + 141];
		}

		printf("%f\n", d);
		printf("%f\n", f);
		printf("\n");

		a += 0.5;
		b += 0.33;

	}	

    return 0;
}