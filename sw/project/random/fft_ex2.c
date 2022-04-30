#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stdint.h>
#include <complex.h> 
#define PI 3.14159265358979


double a [] = {0,100,200,300};

uint32_t size = 8;



double FFT(double *a, uint32_t size){

    uint32_t n = size;
    if(n <=  2){
        return *a;
    }

    double evena[4];    // size/2
    double odda[4];     // size/2
    for(uint32_t i = 0; i < size; i+=4){
        evena[i] = a[i];
        evena[i+1] = a[i+1];
    }
    for(uint32_t i = 2; i < size; i+=4){
        odda[i] = a[i];
        odda[i+1] = a[i+1];
    }

    double even [] = FFT(evena, size/2);
    double odd [] = FFT(odda, size/2);


    double temp[8];  //size  here complex (have ot adjust others above)
    double polar[2];
    double evenm[2];
    double oddm[2];
    double resm[2];
    double resa[2];
    for(uint32_t u = 0; u < (int)(size/2); u+=2){
        polar[0] = cos(-2*PI*u/size);
        polar[1] = sin(-2*PI*u/size);
        oddm[0] = odd[u];
        oddm[1] = odd[u+1];
        evenm[0] = even[u];
        evenm[1] = even[u+1];
        multiplication_baseline(polar,oddm,resm);
        addition_baseline(evenm,resm,resa);
        temp[u] = resa[0];                                      
        temp[u+1] = resa[1];                                                   //temp[u] done (from python)

        polar[0] = cos(-2*PI*u/size);
        polar[1] = sin(-2*PI*u/size);
        oddm[0] = odd[u];
        oddm[1] = odd[u+1];
        evenm[0] = even[u];
        evenm[1] = even[u+1];
        multiplication_baseline(polar,oddm,resm);
        resm[0] = -resm[0];
        resm[1] = -resm[1];
        addition_baseline(evenm,resm,resa);
        temp[u + (int)(size/2)] = resa[0];                                      
        temp[u + 1 + (int)(size/2)] = resa[1];                                //temp[u+N//2] done (from python)
    }

    return *temp;
    
}


int main(){


    //printf("%.2f\n", a[2]);
    double b [] = FFT(a,size);
    for(uint32_t i = 0; i < size; i++){
        printf("%.2f\n", b[i]);
    }
    //printf("%.4f + %.4fi", cos(-2*PI/size) , sin(-2*PI/size));
    return 0;
}
