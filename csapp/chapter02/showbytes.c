#include<stdio.h>
#include<stdlib.h>

typedef unsigned char * byte_pointer;

void show_bytes(byte_pointer p,size_t len);
void show_int(int n);
void show_float(float f);
void show_double(double d);

int main(int argc,char**argv){
    show_int(222);
    show_float(33.33);
    show_double(12.33);
    return 0;
}

void show_bytes(byte_pointer p,size_t len){
    printf("the hex bytes are:");
    for(size_t i = 0; i < len; ++i){
        printf("%.2x",p[i]);
    }

    printf("\n");
}

void show_int(int n){
    printf("the given number is : %d\n",n);
    show_bytes((byte_pointer)&n,sizeof(int));
}

void show_float(float f){
    printf("the given number is : %f\n",f);
    show_bytes((byte_pointer)&f,sizeof(float));
}

void show_double(double d){
    printf("the given number is : %lf\n",d);
    show_bytes((byte_pointer)&d,sizeof(double));
}
