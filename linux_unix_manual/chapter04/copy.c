/*************************************************************************
	> File Name: copy.c
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年05月27日 星期六 12时02分43秒
 ************************************************************************/

#include<stdio.h>
#include<sys/stat.h>
#include<fcntl.h>
#include"../src/lib/tlpi_hdr.h"

#ifndef BUF_SIZE /*Allow cc -D to override*/

#define BUF_SIZE 1024
#endif

int main(int argc,char*argv[]){
    int inputFd,outputFd,openFlags;
    mode_t filePerms;
    ssize_t numRead;
    char buff[BUF_SIZE];

    if(argc != 3 || strcmp(argv[1],"--help")==0){
        usageErr("%s old-file new -file\n",argv[0]);
    }

    inputFd = open(argv[1],O_RDONLY);
    if(inputFd == -1){
        errExit("opening file %s",argv[1]);
    }

    openFlags = O_CREAT | O_WRONLY | O_TRUNC;

    filePerms = S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;

    outputFd = open(argv[2],openFlags,filePerms);

    if(outputFd == -1){
        errExit("opening file %s",argv[2]);
    }

    while((numRead = read(inputFd,buff,BUF_SIZE))>0){
        if(write(outputFd,buff,numRead)!=numRead){
            fatal("could't write whole buff");
        }
    }

    if(numRead == -1){
        errExit("read");
    }

    if(close(inputFd)==-1){
        errExit("close input");
    }

    if(close(outputFd)==-1){
        errExit("close output");
    }

    exit(EXIT_SUCCESS);
}
