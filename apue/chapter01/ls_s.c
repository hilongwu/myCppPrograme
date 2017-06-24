/*************************************************************************
    > File Name: ls_s.c
    > Author: ma6174
    > Mail: ma6174@163.com 
    > Created Time: Wed 21 Jun 2017 08:52:48 PM PDT
 ************************************************************************/

#include<stdio.h>
#include<apue.h>

#include<dirent.h>

int main(int argc,char * argv[]){
    DIR *dp;
    struct dirent *dirp;

    if(argc != 2){
        err_quit("usage:ls directory_name");
    }

    if((dp = opendir(argv[1]))==NULL){
        err_sys("can not open %s",argv[1]);
    }

    while((dirp=readdir(dp))!=NULL){
        printf("%s\n",dirp->d_name);
    }
    closedir(dp);
    exit(0);
}
