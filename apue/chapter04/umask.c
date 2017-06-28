#include<apue.h>
#include<fcntl.h>

// 声明欲定义的文件权限
#define RWRWRW S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH

int main(){
    // 清除文件权限屏蔽字
    umask(0);
    // 创建文件
    if(creat("temp1",RWRWRW)<0){
        err_ret("create file1 error\n");
    }
    // 设置屏蔽字：屏蔽所有写权限
    umask(S_IWGRP|S_IWOTH|S_IWUSR);
    //再创建文件
    if(creat("temp2",RWRWRW)<0){
        err_ret("create file2 error\n");
    }
    exit(0);
}
