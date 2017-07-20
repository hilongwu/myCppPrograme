#include<apue.h>
#include<fcntl.h>

int main(int argc,char**argv){
    int fd;
    struct stat filestat_buf;
    struct timespec amtime[2];

    for(int i=1;i<argc;++i){
        if(stat(argv[i],&filestat_buf) < 0){
            err_ret("stat error at :%s\n",argv[i]);
            continue;
        }

        if((fd = open(argv[i],O_RDWR|O_TRUNC)) < 0){
            err_ret("open error for :%s\n",argv[i]);
            continue;
        }

        amtime[0] = filestat_buf.st_atim;
        amtime[1] = filestat_buf.st_mtim;

        if(futimens(fd,amtime) < 0){
            err_ret("futimens error at :%s\n",argv[i]);
        }

        close(fd);

    }

    exit(0);

}
