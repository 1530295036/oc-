//
//  main.m
//  zhizhen
//
//  Created by qkl on 2021/1/19.
//
//&:取地址运算符，单目运算符，该运算符用于读取该变量的保存地址
//*:取值运算符，单目运算符，该运算符用于读取该指针变量所指的变量，后面通常紧跟一个指针变量
#import <Foundation/Foundation.h>

void swap(int*p1,int*p2)
{
    int tmp = *p1;
    *p1 = *p2;
    *p2 = tmp;
    p1=p2=nil;
}
int main(int argc, const char * argv[]) {
  @autoreleasepool {
//     int c=200;
//     int*p;
//     p=&c;
//     NSLog(@"%d",c==(*(&c)));
//}

//}
//使用指针变量作为形参对变量进行交换
      
        int a = 5;
        int b = 9;
        int*pa=&a;
        int*pb=&b;
        swap(&a,&b);
        NSLog(@"a的值为%d,b的值为%d",a,b);
        NSLog(@"pa的值为%p，pb的值为%p",pa,pb);
    }
}
