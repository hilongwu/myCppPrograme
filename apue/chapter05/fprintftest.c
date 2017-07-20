#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>

#include<sys/stat.h>

int main(int argc,char **argv){
    int fd;
    FILE * file;

    if(argc!=3){
        fputs("usage ./fprintftest <filename> <data>\n",stderr);
        exit(1);
    }

    umask(0);


    if((fd=open(argv[1],O_WRONLY|O_CREAT|O_TRUNC,S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH)) < 0){
        fputs("open error!\n",stderr);
        exit(1);
    }

    if((file=fdopen(fd,"w")) == NULL){
        fputs("fdopen error!\n",stderr);
        exit(1);
    }

    if(fprintf(file,"write info:%s\n",argv[2]) < strlen(argv[2])){
        fputs("fprintf error!\n",stderr);
    }

    fclose(file);
    close(fd);
    printf("success!\n");
    exit(0);

}
