/*************************************************************************
	> File Name: numerics.h
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年04月13日 星期四 15时42分45秒
 ************************************************************************/

#ifndef _NUMERICS_H
#define _NUMERICS_H
//functors
template<typename T>
struct plus{
    T operator()(const T& t1,const T& t2){
        return t1 + t2;
    }
};


template<typename InputIter,typename Ret,typename OP>
Ret accumulate(InputIter first,InputIter last,Ret init,OP op){
    if(first == last) return init;
    while(first != last){
        init = op(init,*first);
        ++first;
    }
    return init;
}

template<typename InputIter,typename Ret>
Ret accumulate(InputIter first,InputIter last,Ret init){
    if(first == last)return init;
    else return accumulate(first,last,init,plus<Ret>());
}

#endif
