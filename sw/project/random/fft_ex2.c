#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <stdint.h>
#include <complex.h> 
#include <string.h>
#define PI 3.14159265358979




double b [] = {4,0};


double* FFT(double *a, uint32_t size){

    //uint32_t n = size;
    if(size <=  2){
        return a;
    }

    double evena [4];    // size/2
    double odda [4];     // size/2
    //printf("hihi");
    for(uint32_t i = 0; i < 7; i+=4){
        evena[i/2] = a[i];
        evena[i/2 + 1] = a[i+1];
    }
    //printf("huhu");
    for(uint32_t i = 2; i < size; i+=4){
        //printf("hooohi\n");
        odda[i/2] = a[i];
        odda[i/2+1] = a[i+1];
    }
    for(uint32_t i = 0; i < size; i++){
        printf("%.2f\n", evena[i]);
    }
    printf("hooohi\n");
    for(uint32_t i = 0; i < size; i++){
        printf("%.2f\n", odda[i]);
    }
    // double even [] = FFT(evena, size/2);
    // double odd [] = FFT(odda, size/2);
    printf("hooohi\n");

    // double temp[8];  //size  here complex (have ot adjust others above)
    // double polar[2];
    // double evenm[2];
    // double oddm[2];
    // double resm[2];
    // double resa[2];
    // for(uint32_t u = 0; u < (int)(size/2); u+=2){
    //     polar[0] = cos(-2*PI*u/size);
    //     polar[1] = sin(-2*PI*u/size);
    //     oddm[0] = odd[u];
    //     oddm[1] = odd[u+1];
    //     evenm[0] = even[u];
    //     evenm[1] = even[u+1];
    //     multiplication_baseline(polar,oddm,resm);
    //     addition_baseline(evenm,resm,resa);
    //     temp[u] = resa[0];                                      
    //     temp[u+1] = resa[1];                                                   //temp[u] done (from python)

    //     polar[0] = cos(-2*PI*u/size);
    //     polar[1] = sin(-2*PI*u/size);
    //     oddm[0] = odd[u];
    //     oddm[1] = odd[u+1];
    //     evenm[0] = even[u];
    //     evenm[1] = even[u+1];
    //     multiplication_baseline(polar,oddm,resm);
    //     resm[0] = -resm[0];
    //     resm[1] = -resm[1];
    //     addition_baseline(evenm,resm,resa);
    //     temp[u + (int)(size/2)] = resa[0];                                      
    //     temp[u + 1 + (int)(size/2)] = resa[1];                                //temp[u+N//2] done (from python)
    // }
    
    return a;
    
}


int main(){

    uint32_t size = 8;
    double input [] = {0,0,100,0,200,0,300,0};
    //printf("%.2f\n", a[2]);
    double b [8];
    memcpy(b, FFT(input,size), sizeof(b));
    for(uint32_t i = 0; i < 8; i++){
        printf("%.2f\n", b[i] );
    }
    //printf("%.4f + %.4fi", cos(-2*PI/size) , sin(-2*PI/size));
    return 0;
}
