#include<apue.h>
#include<fcntl.h>

int main(int argc, char* argv[]){
    if(argc!=2){
        err_quit("usage:deleteAfterWhile <filename>\n");
    }

    if(open(argv[1],O_RDONLY)<0){
        err_sys("open error");
    }

    if(unlink(argv[1])<0){
        err_sys("unlink file error");
    }

    printf("unlinked:%s\n",argv[1]);

    sleep(20);

    printf("proccess done...\n");

    exit(0);
}
