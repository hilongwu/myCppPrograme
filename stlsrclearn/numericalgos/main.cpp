/*************************************************************************
	> File Name: main.cpp
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年04月13日 星期四 15时52分32秒
 ************************************************************************/

#include<iostream>
#include "numerics.h"
#include <vector>

using namespace std;

int main(){

    vector<int> iv(10,8);

    cout << accumulate(iv.begin(),iv.end(),0) << endl;


    return 0;
}
