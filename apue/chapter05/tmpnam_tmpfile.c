#include<stdio.h>
#include<stdlib.h>

int main(){

    FILE* fp;

    char filenameBuf[L_tmpnam];
    char buf[1024] = {0};
    char content[1024] = {0};

    printf("tmpnam:%s\n",tmpnam(NULL));

    printf("tmpnam:%s\n",tmpnam(NULL));


    tmpnam(filenameBuf);

    printf("filenameBuf:%s\n",filenameBuf);


    if((fp=tmpfile()) == NULL){
        fputs("tmpfile error!\n",stderr);
        exit(1);
    }

    fputs("please enter whatever you want!\n>\t",stdout);

    if((fgets(buf,sizeof(buf),stdin)) == NULL){
        fputs("fgets error!\n",stderr);
        exit(1);
    }

    fputs(buf,fp);

    // 注意，写完之后要重新调整文件指针位置！
    rewind(fp);

    if(fgets(content,sizeof(content),fp) == NULL){
        fputs("read from tmpfile error!\n",stderr);
        exit(1);
    }

    printf("you've input:%s\n",content);

    exit(0);
}
