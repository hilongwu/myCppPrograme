#include <iostream>
#include <list>
#include <algorithm>
#include <vector>
#include <type_traits>
#include <tuple>

template<typename T,typename ...Args,typename = decltype(T(std::declval<Args>()...))>
void test(int){
    std::cout << "t args..." << std::endl;
};
template<typename T,typename ...Args>
void test(...){
    std::cout << "t args.. no " << std::endl;
};

template<typename T,typename = decltype(T())>
void test(int){
    std::cout << "yes" << std::endl;
};
template <typename>
void test(...){
    std::cout << "no" << std::endl;
}

struct A{
    A() = delete;
    A(int,int,long){

    }
};

int main() {
//    std::cout << "hhh" << std::endl;
//    std::vector<int> iv = {2,3,4,4,4,4,54,5};
//    sort(iv.begin(),iv.end());
//    std::cout << count(iv.begin(),iv.end(),4) << std::endl;
//    std::cout << *find(iv.begin(),iv.end(),4) << std::endl;
//
//    for(auto item:iv){
//        std::cout << item << "\t";
//    }
//    std::tuple<int> ituple(88);
//    std::cout << std::endl;
//    std::is_default_constructible<int>::value;
    //test<A>(0);
    test<A,int,int,long,int>(0);
    //std::is_move_constructible
    return 0;
}