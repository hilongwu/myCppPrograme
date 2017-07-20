#include "../mylib/myunp.h"
#include <errno.h>
#include <netinet/in.h>
#include <arpa/inet.h>

/*
 * 使用inet_aton来实现inet_pton
 * */

int my_inet_pton(int family,const char*strptr,void *addrptr){
    if(family == AF_INET){
        struct in_addr tempInAddr;
        if(inet_aton(strptr,&tempInAddr)){
            memcpy(addrptr,&tempInAddr,sizeof(struct in_addr));
            return 1;
        }
        return 0;
    }
    errno = EAFNOSUPPORT;
    return (-1);
}

const char* my_inet_ntop(int family,const void*addrptr,char*strptr,size_t len){
    if(family==AF_INET){
        const u_char*p = (const u_char*)addrptr;

        printf("addrptr:%d\n",*(int*)addrptr);

        char temp[INET_ADDRSTRLEN];

        snprintf(temp,sizeof(temp),"%d.%d.%d.%d",p[0],p[1],p[2],p[3]);

        if(strlen(temp)>= len){
            errno = ENOSPC;
            return NULL;
        }
        strcpy(strptr,temp);
        return strptr;
    }

    errno = EAFNOSUPPORT;
    return (NULL);
}


int main(int argc,char**argv){
    if(argc !=2 ){
        err_quit("usage error\n");
    }
    struct in_addr in_val;

    if(!my_inet_pton(AF_INET,argv[1],&in_val)){
        err_quit("my_inet_pton failed:%s",argv[1]);
    }
    else{
        printf("%s -> %ld\n",argv[1],(long)in_val.s_addr);

        inet_pton(AF_INET,argv[1],&in_val);

        printf("usage inet_pton itself got:%ld\n",(long)in_val.s_addr);

        printf("reverse -> usage inet_ntop:\n");

        char str[INET_ADDRSTRLEN] = {0};

        inet_ntop(AF_INET,&in_val,str,sizeof(str));

        printf("reversed ip:%s\n",str);

        my_inet_ntop(AF_INET,&in_val,str,sizeof(str));
        printf("usage my_inet_ntop:%s\n",str);
    }
    exit(0);

}
