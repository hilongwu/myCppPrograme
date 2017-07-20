#include<stdio.h>
#include<stdlib.h>

int global_init_var = 99;

size_t global_uninit_var;

void show(){
    printf("func show\n");
}

int main(int argc,char**argv){
    static int local_static_init_var = 33;
    static char local_static_uninit_var;
    unsigned max_size=0;
    unsigned blockSize[]={1024*1024,1024,1};

    for(int i=0;i<3;++i){
        for(int count=0;;++count){
            void *block = malloc(max_size + blockSize[i]*count);
            if(block){
                free(block);
                max_size += blockSize[i]*count;
            }
            else{
                break;
            }
        }
    }

    printf("maximus malloc bytes:%u\n",max_size);
}
