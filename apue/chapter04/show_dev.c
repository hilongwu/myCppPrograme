#include<stdio.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<stdlib.h>


int main(int argc, char **argv){
    struct stat statbuf;


    for(int i=1;i<argc;++i){
        printf("current device is:%s\n",argv[i]);

        if(stat(argv[i],&statbuf) < 0){
            fputs("stat error!\n",stderr);
            continue;
        }

        printf("dev = %d / %d\n",major(statbuf.st_dev),minor(statbuf.st_dev));

        if(S_ISCHR(statbuf.st_mode) || S_ISBLK(statbuf.st_mode)){
            printf(" type:%s,rdev=%d / %d\n",S_ISCHR(statbuf.st_mode)?"character":"block",major(statbuf.st_rdev),minor(statbuf.st_rdev));
        }
    }
    exit(0);

}
