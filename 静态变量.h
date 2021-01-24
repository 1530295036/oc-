//
//  静态变量.h
//  
//
//  Created by qkl on 2021/1/24.
//

#import <Foundation/Foundation.h>
//在oc中，变量声明前加上关键字static，该变量就称为静态变量，其作用是可以使局部变量保留多次调用一个方法所得的值
//声明整数hitCount是一个static
//如果需要某个局部变量的值在函数调用结束后依然可以保留，此时可用static修饰局部变量。
//使用static修饰的局部变量被称为静态局部变量，静态局部变量将会保存在静态存储区内
void fac(int n)
{
    auto int a = 1;//auto int 声明后，每次调用这个函数都会将a重新定义为1
    static int b = 1;//定义静态局部变量，每次函数调用结束后，都会保存该变量的值
    a += n;//每次调用a是总是等于a（1）的值加上n
    b += n;//b变量可以保留上一次调用的结果的值加上n
    NSLog(@"a的值为%d,b的值为%d",a,b);
}
int main(int argc,char *argv[])
{
    @autoreleasepool {
        //采用循环调用了fac（）函数4次
        for (int i = 0; i < 4; i++) {
            fac(i);
        }
    }
}

