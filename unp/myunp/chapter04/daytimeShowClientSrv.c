#include "../mylib/myunp.h"

#include<time.h>
#include<fcntl.h>
#include<netinet/in.h>
#include<sys/socket.h>
#include<arpa/inet.h>

int main(int argc,char**argv){
    int listend,clientd;

    struct sockaddr_in serverAddr,clientAddr;

    socklen_t clientSockLen;

    char buf[MAX_LINE];

    time_t timeticks;

    // 创建服务器端的监听套接字
    if((listend=socket(AF_INET,SOCK_STREAM,0)) < 0){
        err_quit("socket error!");
    }

    // 初始化服务器端套接字地址结构信息
    // 先清零
    bzero(&serverAddr,sizeof(serverAddr));

    serverAddr.sin_family = AF_INET;
    serverAddr.sin_addr.s_addr = htonl(INADDR_ANY);
    serverAddr.sin_port = htons(9999);

    // 绑定地址和端口到套接字！
    if(bind(listend,(struct sockaddr*)&serverAddr,sizeof(serverAddr)) < 0){
        err_quit("bind error!");
    }

    // 监听套接字设置！将主动连接套接字转为被动监听
    if(listen(listend,LISTENQ) < 0){
        err_quit("listen error!");
    }

    // 循环等待客户端访问！

    for(;;){
        clientSockLen = sizeof(clientAddr);

        if((clientd=accept(listend,(struct sockaddr*)&clientAddr,&clientSockLen)) < 0){
            err_ret("accept error!");
            continue;
        }

        printf("connected client [%s:%d]\n",inet_ntop(AF_INET,&clientAddr.sin_addr,buf,sizeof(buf)),ntohs(clientAddr.sin_port));

        timeticks = time(NULL);

        snprintf(buf,MAX_LINE,"%.24s\r\n",ctime(&timeticks));

        if(write(clientd,buf,strlen(buf)) != strlen(buf)){
            err_ret("write error!");
            continue;
        }

        if(close(clientd) < 0){
            err_ret("close error!");
            continue;
        }
    }
    exit(0);
}
