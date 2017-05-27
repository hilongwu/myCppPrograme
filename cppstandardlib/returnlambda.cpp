/*************************************************************************
	> File Name: returnlambda.cpp
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年04月17日 星期一 20时16分55秒
 ************************************************************************/

#include<iostream>
#include <functional>
using namespace std;

function<int(int,int)> returnLambdaSum(){
    return [](int a,int b){
        return a+b;
    };
}

int main(){

    auto sumfunc = returnLambdaSum();
    cout << sumfunc(2,9) << endl;

    return 0;
}

