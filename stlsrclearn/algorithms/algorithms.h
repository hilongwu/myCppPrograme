/*************************************************************************
	> File Name: algorithms.h
	> Author:lotuswhl 
	> Mail:410771408@qq.com 
	> Created Time: 2017年04月14日 星期五 10时50分05秒
 ************************************************************************/

#ifndef _ALGORITHMS_H
#define _ALGORITHMS_H
#include <iterator>


// 查找第一组相等相邻元素
template<typename ForwardIter>
ForwardIter adjacent_find(ForwardIter first,ForwardIter last){
    if(first ==  last) return last;
    ForwardIter next = first;
    while(++next != last){
        if(*first == *next)  return first;
        first = next;// 使用赋值，速度应该比++运算符快
    }
    return last;// 最终还是没有找到相等的 相邻元素
}
// 接受一个用于比较的函数对象，返回第一组满足条件的相邻元素
template<typename ForwardIter,typename BinaryOP>
ForwardIter adjacent_find(ForwardIter first,ForwardIter last,BinaryOP op){
    if(first == last) return last;
    ForwardIter next = first;
    while(++next != last){
        if(op(*first,*next)) return first;
        first = next;
    }
    return last;
}


//count 计数
template<typename InputIter,typename T>
typename std::iterator_traits<InputIter>::difference_type 
count(InputIter first,InputIter last,const T& value){
    typename std::iterator_traits<InputIter>::difference_type ret = 0;
    while(first != last){
        if(*first == value) ++ret;
        ++first;
    }
    return ret;
}

// count_if  满足条件pred计数

template<typename InputIter,typename SPred>
typename std::iterator_traits<InputIter>::difference_type 
count_if(InputIter first,InputIter last,SPred pred){
    typename std::iterator_traits<InputIter>::difference_type ret = 0;
    for(;first != last;++first){
        if(pred(*first)) ++ret;
    }
    return ret;
}


//find 找到相等的第一个元素
template<typename InputIter,typename T>
InputIter find(InputIter first,InputIter last,const T& value){
    while(first != last && *first != value) ++first;
    return first;
}

//find_if  根据条件找到第一个
template<typename InputIter,typename SPred>
InputIter find_if(InputIter first,InputIter last,SPred op){
    while(first != last && !op(*first)) ++first;
    return first;
}






#endif
