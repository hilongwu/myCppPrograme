/*************************************************************************
	> File Name: 001pairt.cpp
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年04月18日 星期二 15时08分31秒
 ************************************************************************/

#include<iostream>
#include <algorithm>
#include <utility>
#include<tuple>

using namespace std;

template<typename T1,typename T2>
ostream& operator<<(ostream &os,const pair<T1,T2>& p){
    return os << "[" << p.first << "," << p.second << "]";
}


struct Foo{
    // 单参数 tuple版本构造函数
    Foo(const tuple<int,char> &){
        cout << "Foo tuple ...." << endl;
    }
    // 可变参数构造函数
    template<typename... Args>
    Foo(Args... args){
        cout << "Foo ...args" << endl;
    }
};

int main(){
    pair<int,char> icpair(33,'h');
    cout << icpair << endl;
    //通过tuple形式的get访问元素
    cout << get<0>(icpair) << endl;
    // 使用tuple的工具获取pair的元素类型个数
    cout << tuple_size<decltype(icpair)>::value << endl;
    // 通过tuple_element<size_t,Tupletype> 来获取一个tuple中某个位置的元素类型
    tuple_element<0,decltype(icpair)>::type i = 99999;
    cout << i << endl;
     

    tuple<int,char> ictuple(33,'d');
    pair<int,Foo> iFpair(88,ictuple);
    pair<int,Foo> iFpairArgs(piecewise_construct,make_tuple(999),ictuple);

}
