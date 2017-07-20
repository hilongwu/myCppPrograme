#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>

int main(int argc,char**argv){

    char *pathptr;
    size_t size;

    if(argc==2){
        if(chdir(argv[1])<0){
            fputs("chdir error!\n",stderr);
            exit(1);
        }
    }
    size = pathconf("/",_PC_PATH_MAX);
    if(size < 0){
        size = 1024;
        fputs("pathconf error!\n",stderr);
    }
    pathptr = (char*)malloc(++size);
    if(pathptr == NULL){
       fputs("malloc error!\n",stderr);
        exit(1);
    }

    if(getcwd(pathptr,size)<0){
        fputs("getcwd error!\n",stderr);
        exit(1);
    }
    printf("cwd=%s\n",pathptr);
}
