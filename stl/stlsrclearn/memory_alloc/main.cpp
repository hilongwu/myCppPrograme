/*************************************************************************
	> File Name: test__malloc_template.cpp
	> Author:lotuswhl
	> Mail:2857978398@qq.com
	> Created Time: Thu 30 Mar 2017 12:01:00 AM PDT
 ************************************************************************/

#include<iostream>
#include "__malloc_alloc_template.h"
#include <vector>
using namespace std;

int main(){

    malloc_alloc alloc;
    vector<int> vi(10,88);
    int* p = (int*)alloc.allocate(sizeof(int));
    int b = 3;
    p = new int(88);
    char *cp = (char*)p;
    *cp = '9';
    cout << *p << endl;
    alloc.deallocate(p,0);
    for(auto item:vi){
      cout << item<< endl;
    }
    return 0;
}
