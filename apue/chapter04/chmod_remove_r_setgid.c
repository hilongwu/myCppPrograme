#include<apue.h>
#include<sys/stat.h>

int main(int argc,char*argv[]){
    struct stat buf;



    if(argc!=2){
        err_quit("usage:chmod_remove_r_setgid <filename>\n");
    }

    // 获取文件的stat以获取st_mode，从中获取文件原本的权限信息
    if(lstat(argv[1],&buf)<0){
        err_quit("get file stat error\n");
    }

    if(chmod(argv[1],(buf.st_mode & ~S_IRUSR)|S_ISGID)<0){
        err_quit("chmod error");
    }

    exit(0);

}
