//
//  main.m
//  函数
//
//  Created by qkl on 2021/1/19.
//
//len,和数字5关联，函数调用时len就是5，会输出小于5的，该变量用来控制长短.第6为是"\0",因此第6位输出是0 
#import <Foundation/Foundation.h>
void map(int*data,int len,int(*fn)())
{
    for(int*p = data;p<data+len;p++)
    {
        //调用fn函数，fn是动态传入的
           printf("%d,",(*fn)(*p));
    }
    printf("\n");
}
int noChange(int val)
{
    return  val;
}
//定义一个计算平方的函数
int square(int val)
{
    return val*val;
}
//定义一个计算立方的函数
int cube(int val)
{
    return val*val*val;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int data[] = {20,11,3,23,34};
        //下面程序代码3次调用map（）函数，每次调用时传入不同函数
        map(data, 5, noChange);
        NSLog(@"计算数组元素平方");
        map(data, 5, square);
        NSLog(@"计算数组元素立方");
        map(data, 5, cube);
    }
    
}
