#include"../mylib/myunp.h"
#include<netinet/in.h>// socketaddr结构体等定义
#include<arpa/inet.h> // inet相关函数定义

int main(int argc,char*argv[]){
    int sockid,numread;
    char buf[MAX_LINE];
    struct sockaddr_in serverAddr;

    if(argc!=2){
        err_quit("usage:daytimecliv4 <IPAddress>\n");
    }

    // 创建socket链接
    // AF_INET:TCP 网际
    // SOCK_STREAM:字节流
    if( (sockid=socket(AF_INET,SOCK_STREAM,0)) < 0){
        err_quit("socket error");
    }

    // 将套接字初始化为0  某些API需要套接字后8位为0
    memset(&serverAddr,0,sizeof(serverAddr));

    // 设置套接字参数
    serverAddr.sin_family = AF_INET;
    // htons:大小端交换 <主机到网络短整数>
    serverAddr.sin_port = htons(13);

    // 将IP127.0.0.1等变为数值型，存储到serverAddr的相应位置
    if(inet_pton(AF_INET,argv[1],&serverAddr.sin_addr) <= 0){
        err_quit("inet_pton error for :%s",argv[1]);
    }

    // 链接socket
    // 客户端sockid链接请求链接服务器端serverAddr...
    if(connect(sockid,(const struct sockaddr*)&serverAddr,sizeof(serverAddr))<0){
        err_quit("connect error");
    }

    // 接收服务器端数据

    while( (numread=read(sockid,buf,MAX_LINE)) >0){
        buf[numread] = 0;// 注意字符串结束符null
        if(fputs(buf,stdout)==EOF){
            err_quit("fputs error");
        }
    }

    if(numread<0){
        err_quit("read error");
    }
    exit(0);
}
