#include<stdio.h>
#include<sys/stat.h>
#include<errno.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>

void make_temp(char *filename);
int main(){

    char good_filename[] = "/tmp/tmpfileXXXXXX";
    char *bad_filename = "/tmp/tmpfileXXXXXX";

    printf("creating good file ...\n");
    make_temp(good_filename);
    printf("creating bad file ....\n");
    make_temp(bad_filename);
    exit(0);
}


 void make_temp(char *filename){
    int fd;

    struct stat bufstat;

    if((fd=mkstemp(filename)) < 0){
        fputs("mkstemp error!\n",stderr);
        exit(1);
    }

    close(fd);
    printf("tempfile:%s\n",filename);

    if(stat(filename,&bufstat) < 0){
        if(errno == ENOENT){
            fputs("file not exist!\n",stderr);
            exit(1);
        }
        else{
            fputs("stat error!\n",stderr);
            exit(1);
        }
    }
    else{
        printf("file exist!\n");
        unlink(filename);
    }
 }
