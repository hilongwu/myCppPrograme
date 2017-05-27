/*************************************************************************
	> File Name: main.cpp
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年04月14日 星期五 11时09分05秒
 ************************************************************************/

#include<iostream>
#include <vector>
#include "algorithms.h"

using namespace std;

template<typename T,size_t n>
struct lessN{
    bool operator()(const T& t){
        return t < n;
    }
};

int main(){
    

    vector<int> iv = {1,2,3,3,4,4,5,6};
    cout << *adjacent_find(iv.begin(),iv.end()) << endl;
    cout << count(iv.begin(),iv.end(),4) << endl;
    cout << count_if(iv.begin(),iv.end(),lessN<int,5>()) << endl;
    cout << *find(iv.begin(),iv.end(),4) << endl;
    cout << *find_if(iv.begin(),iv.end(),lessN<int,3>()) << endl;


    return 0;
}

