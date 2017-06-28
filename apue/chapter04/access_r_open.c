#include<apue.h>
#include<fcntl.h>

int main(int argc,char*argv[]){
    if(argc != 2){
        err_quit("usage:access_r_open <pathname>\n");
    }

    if(access(argv[1],R_OK)<0){
        err_ret("access failed:%s",argv[1]);
    }
    else{
        printf("access succeed!\n");
    }

    if(open(argv[1],O_RDONLY)<0){
        err_ret("open failed:%s",argv[1]);
    }
    else{
        printf("open succeed!\n");
    }
    exit(0);
}
