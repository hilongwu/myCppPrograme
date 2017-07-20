#include"../mylib/myunp.h"
#include<netinet/in.h> //structs definitions
#include<arpa/inet.h> //funcs

#include<time.h>

int main(int argc,char*argv[]){

    int serverID ;
    struct sockaddr_in serverSocket;
    int clientID;
    time_t ticks;
    char  buf[MAX_LINE];
    int numWrite;

    // 先创建一个套接字，用于后续绑定
    if( (serverID = socket(AF_INET,SOCK_STREAM,0)) < 0){
        err_quit("socket error ");
    }

    // 套接字结构体清零
    memset(&serverSocket,0,sizeof(serverSocket));

    // 初始化，配置套接字结构体参数
    serverSocket.sin_family = AF_INET;
    serverSocket.sin_port = htons(9999);

    serverSocket.sin_addr.s_addr = htonl(INADDR_ANY);

    //客户端直接连接服务器端
    // 服务器端绑定到套接字描述符
    if(bind(serverID,(const struct sockaddr*)&serverSocket,sizeof(serverSocket)) < 0){
        err_quit("bind error");
    }

    // 设置监听
    if(listen(serverID,LISTENQ) < 0){
        err_quit("listen error ");
    }

    // 循环接收请求，并发送数据回应
    for(;;){
        if( (clientID=accept(serverID,(struct sockaddr*)NULL,NULL)) < 0){
            err_quit("accept error");
        }
        ticks = time(NULL);
        printf("accepted:%d\n",clientID);
        snprintf(buf,sizeof(buf),"time got:%.24s\r\n",ctime(&ticks));
        numWrite = strlen(buf);
        printf("sending message:%s",buf);
        if(write(clientID,buf,numWrite) !=numWrite){
            err_quit("write error");
        }

        if(close(clientID)<0){
            err_quit("close error");
        }

    }

}
