#include<apue.h>
#include<sys/stat.h>

int main(int argc,char* argv[]){
    int i;
    struct stat buf;
    char *ptr;

    for(int i = 1;i < argc;++i){
        printf("filename:%s\n",argv[i]);

        if(lstat(argv[i],&buf)<0){
            err_ret("lstat error\n");
            continue;
        }

        if(S_ISREG(buf.st_mode)){
            ptr = "Regular";
        }
        else if(S_ISDIR(buf.st_mode)){
            ptr = "Directory";
        }
        else if(S_ISCHR(buf.st_mode)){
            ptr = "char special file";
        }
        else if(S_ISBLK(buf.st_mode)){
            ptr = "block special file";
        }
        else if(S_ISFIFO(buf.st_mode)){
            ptr = "FIFO";
        }
        else if(S_ISSOCK(buf.st_mode)){
            ptr = "socket!";
        }
        else {
            ptr = "unknown mode!";
        }
        printf("%s\n\n",ptr);
        if(S_ISUID & buf.st_mode){
            printf("set uid procedure...\n");
        }

        if(S_ISGID & buf.st_mode){
            printf("set gid procedure...\n");
        }
    }
    exit(0);
}
