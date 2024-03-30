#include<stdio.h>
#include"calcu.h"
#include"input.h"
void main(void){
    double m;
    double n;
    double v;
    input(&m, &n);
    v = calcu(m, n);
    printf("value = %.2lf\n\n", v);
}
printf("congratulations! the program run finished");
