#include<stdio.h>
#include<sys/stat.h>
#include<dirent.h>
#include<stdlib.h>

#include<unistd.h>
#include<limits.h>

#include<errno.h>
#include<stddef.h>
#include<stdarg.h>
#include<string.h>

#define MAX_LINE 1024

/*
 * error handler
 * */

void err_do(int err_flag,const char *fmt,va_list va);

void err_ret(const char*fmt,...);

void err_quit(const char*fmt,...);

typedef int Handle_Func_Type(const char *,struct stat *statptr,int handlerType);

static int myftw(const char*pathname,Handle_Func_Type*);

static int recurHandlePaths(Handle_Func_Type*);

static Handle_Func_Type handlerFunc;

#ifdef PATH_MAX
static long path_max = PATH_MAX;
#else
static long path_max = 0;
#endif

#define PATH_MAX_GUESS 1024

char * path_alloc(size_t *sizep){
    char *path;

    if(path_max == 0){
        errno=0;
        if((path_max = pathconf("/",_PC_PATH_MAX))<0){
            if(errno==0){
                path_max = PATH_MAX_GUESS;
            }
            else{
                err_quit("pathconf error\n");
            }
        }
    }

    if((path=(char*)malloc(path_max))==NULL){
        err_quit("alloc error\n");
    }
    if(sizep != NULL){
        *sizep = path_max;
    }
    return path;
}

static long numRegs,numDirs,numBlks,numChrs,numFifos,numSocks,numTotal,numSoftLinks;


int main(int argc,char **argv){

    int ret;

    if(argc!=2){
        err_quit("usage dirinfo_cnt_myftw <pathname>\n");
    }

    myftw(argv[1],handlerFunc);

    numTotal = numBlks + numChrs + numDirs + numRegs + numFifos + numSocks + numSoftLinks;

    if(numTotal == 0)numTotal = 1;

    printf("regular files = %7ld,%5.2f %%\n",numRegs,numRegs*100.0/numTotal);

    printf("directories = %7ld,%5.2f %%\n",numDirs,numDirs*100.0/numTotal);
    printf("block special = %7ld,%5.2f %%\n",numBlks,numBlks*100.0/numTotal);
    printf("char special = %7ld,%5.2f %%\n",numChrs,numChrs*100.0/numTotal);
    printf("FIFOs = %7ld,%5.2f %%\n",numFifos,numFifos*100.0/numTotal);
    printf("Soft Links = %7ld,%5.2f %%\n",numSoftLinks,numSoftLinks*100.0/numTotal);

    printf("Socks = %7ld,%5.2f %%\n",numSocks,numSocks*100.0/numTotal);

    exit(ret);
}

static char*fullpath;
static size_t pathlen;

int myftw(const char*pathname,Handle_Func_Type* handlerFunc){
    fullpath = path_alloc(&pathlen);

    if(pathlen < strlen(pathname)){
        pathlen = strlen(pathname)*2;

        fullpath =(char*) realloc(fullpath,pathlen);
        if(fullpath == NULL){
            err_quit("realloc failed!\n");
        }
    }

    strcpy(fullpath,pathname);
    return recurHandlePaths(handlerFunc);
}

#define FTW_F 1 // 文件
#define FTW_DIR 2// 文件夹
#define FTW_DIRNOR 3// 不可读文件夹
#define FTW_NOSTAT 4// stat不可读

int recurHandlePaths(Handle_Func_Type*handlerFunc){
    struct stat statbuf;

    struct dirent *dirp;

    DIR * dp;

    int ret,n;

    if(lstat(fullpath,&statbuf) < 0){
        return handlerFunc(fullpath,&statbuf,FTW_NOSTAT);
    }

    // 不是文件件，那么就是文件类的
    if(S_ISDIR(statbuf.st_mode)==0){
        return handlerFunc(fullpath,&statbuf,FTW_F);
    }

    // 接下来就是文件夹的递归处理
    // 先调用处理函数，添加文件夹计数
    if((ret=handlerFunc(fullpath,&statbuf,FTW_DIR))!=0){
        return ret;
    }

    // 循环处理
    // 获取当前路径长度，来进行扩充
    n = strlen(fullpath);

    if(pathlen < n + NAME_MAX + 2){
        pathlen *= 2;
        fullpath = (char*)realloc(fullpath,pathlen);
        if(fullpath==NULL){
            err_quit("realloc error!\n");
        }
    }
    fullpath[n++]='/';
    fullpath[n]=0;

    // 打开文件夹
    if((dp=opendir(fullpath)) == NULL){
        // 说明无法读取文件夹
        return handlerFunc(fullpath,&statbuf,FTW_DIRNOR);
    }

    while((dirp=readdir(dp))!=NULL){
        if(strcmp(dirp->d_name,".")==0||strcmp(dirp->d_name,"..")==0){
            continue;// 跳过这两个特殊符号
        }
        strcpy(&fullpath[n],dirp->d_name);

        if((ret=recurHandlePaths(handlerFunc))!=0){
            break;//递归处理，当出了问题后返回
        }
    }

    fullpath[n-1]=0;// 处理完一层文件夹内容后，重置为文件夹路径以便关闭
    if(closedir(dp)<0){
        err_ret("error closedir\n");
    }
    return ret;
}

int handlerFunc(const char*pathname,struct stat *statptr,int handlerType){
    switch(handlerType){
        case FTW_F:
            switch(statptr->st_mode & S_IFMT){
                case S_IFDIR:
                    err_quit("pathname %s should be FTW_DIR!\n",pathname);
                    break;
                case S_IFREG:
                    numRegs++;
                    break;
                case S_IFBLK:
                    numBlks++;
                    break;
                case S_IFCHR:
                    numChrs++;
                    break;
                case S_IFIFO:
                    numFifos++;
                    break;
                case S_IFLNK:
                    numSoftLinks++;
                    break;
                case S_IFSOCK:
                    numSocks++;
                    break;
            }
            break;
        case FTW_DIR:
            numDirs++;
            break;
        case FTW_DIRNOR:
            err_ret("dir %s not readable!\n",pathname);
            break;
        case FTW_NOSTAT:
            err_ret("stat error for %s\n",pathname);
            break;
        default:
            err_quit("unknown type[%d] of pathname :%s\n",handlerType,pathname);
    }
    return (0);

}


void err_ret(const char *fmt,...){
    va_list va;

    va_start(va,fmt);

    err_do(0,fmt,va);

    va_end(va);
}

void err_quit(const char*fmt,...){

    va_list va;

    va_start(va,fmt);

    err_do(1,fmt,va);

    va_end(va);

    exit(1);
}

void err_do(int flag,const char*fmt,va_list va){
    char buf[MAX_LINE];
    size_t save_errno = errno;

    size_t len;

    vsnprintf(buf,sizeof(buf),fmt,va);

    len = strlen(buf);

    if(flag == 1){
        snprintf(buf+len,sizeof(buf)-len,"error info:%s\n",strerror(save_errno));
    }

    fflush(stdout);
    fputs(buf,stderr);
    fflush(stderr);
}

