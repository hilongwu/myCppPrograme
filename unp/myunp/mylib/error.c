#include"myunp.h"
#include<errno.h>
#include<stdarg.h>


/*
 * error: 0 不使用errno 1 ：使用errno
 * */
void err_do(int error,const char*fmt,va_list va);

// 打印错误信息并返回  不退出程序
void err_ret(const char*fmt,...){
    va_list va;
    va_start(va,fmt);

    err_do(0,fmt,va);

    va_end(va);
}

// 打印错误信息并返回，退出程序
void err_quit(const char*fmt,...){
    va_list va;

    va_start(va,fmt);

    err_do(1,fmt,va);

    va_end(va);

    exit(1);
}

void err_do(int error,const char*fmt,va_list va){
    int errno_saved = errno;
    char buf[MAX_LINE];
    int len;

    vsnprintf(buf,MAX_LINE,fmt,va);

    len = strlen(buf);

    if(1 == error){
        snprintf(buf+len,MAX_LINE-len," error info:%s",strerror(errno_saved));
    }

    strcat(buf,"\n");

    fflush(stdout);
    fputs(buf,stderr);
    fflush(stderr);
}

