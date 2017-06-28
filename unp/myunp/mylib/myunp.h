#ifndef MYLIB_MYUNP_H
#define MYLIB_MYUNP_H
// 可能需要使用的头文件
// 系统相关
#include<sys/types.h>
#include<unistd.h>
#include<sys/stat.h>
#include<sys/socket.h> // 基本的socket定义
//#include<netinet/in.h> //socketaddr_in 定义以及其他的网络定义
//#include<arpa/inet.h> // inet的一些函数


// ISO C
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stddef.h>



// 预定义需要使用的宏
#define MAX_LINE 2048


// 自定义函数声明
void err_ret(const char*,...);
void err_quit(const char*,...);

#endif
