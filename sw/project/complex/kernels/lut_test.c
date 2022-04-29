#include <stdio.h>
#include <stdlib.h>
#include "lut/atan_lookuptable.h"
#include <math.h>

int main(){
    

    double a = 1.0;
    double b = -20.0;
    double c;
    double d;
	double f;
    uint32_t e;


	// for(uint8_t i = 0; i < 10; i++){


		
	// 	c = (a*a) + (b*b);

	// 	d = sqrt(c);

		
	// 	if(c < 1){
	// 		e = (int) ((c * 50) + 0.5);
	// 		f = lookup[e];
	// 	}
	// 	else if(c < 10){
	// 		e = (int) ((c * 10) + 0.5);
	// 		f = lookup[e - 10 + 50];
	// 	}
	// 	else if(c < 50){
	// 		e = (int) (c + 0.5);
	// 		f = lookup[e - 10 + 141];
	// 	}

	// 	printf("%f\n", d);
	// 	printf("%f\n", f);
	// 	printf("\n");

	// 	a += 0.5;
	// 	b += 0.33;

	// }	


	// for(uint32_t  i = 0; i < 10; i++){		


	// 	d = b / a;
	// 	f = atan(d);

	// 	if(d < -10){
	// 		e = (int) (d - 0.5);
	// 		c = lookup[e + 40];
	// 	}
	// 	else if(d < -5){
	// 		e = (int) ((d * 2) - 0.5);
	// 		c = lookup[e + 50];
	// 	}
	// 	else if(d < -1.5){

	// 		e = (int) ((d * 10) - 0.5);
	// 		c = lookup[e + 90];
	// 	}
	// 	else if(d < 0){
	// 		e = (int) ((d * 100) - 0.5);
	// 		c = lookup[e + 225];
	// 	}
	// 	else if(d < 1.5){
	// 		e = (int) ((d * 100) + 0.5);
	// 		c = lookup[e + 225];
	// 	}
	// 	else if(d < 5){
	// 		e = (int) ((d * 10) + 0.5);
	// 		c = lookup[e + 359];
	// 	}
	// 	else if(d < 10){
	// 		e = (int) ((d * 2) + 0.5);
	// 		c = lookup[e + 400];
	// 	}
	// 	else if(d < 40){
	// 		e = (int) (d + 0.5);
	// 		c = lookup[e + 410];
	// 	}
	// 	else{
	// 		c = lookup[451];
	// 	}

	// 	printf("%f\n", c);
	// 	printf("%f\n", f);
	// 	printf("\n");

	// 	a += 0.5;
	//  	b += 0.33;
	//}
	printf("%f\n", lookup[329]);

    return 0;
}