//
//  Person.m
//  Person
//
//  Created by qkl on 2021/1/21.
//

#import "Person.h"
@implementation Person
{
    //定义一个只能在实现部分使用的成员变量
    int _testAttr;
}
//下面定义了一个set Name：addAge：方法
-(void)setName:(NSString*)n andAge:(int)a//1
{
    _name = n;
    _age  = a;
}
//下面定义了一个say: 方法
-(void)say:(NSString *)content
{
    NSLog(@"%@",content);
}
//下面定义了一个不带形参的info方法
-(NSString*)info
{
    [self test];
    return [NSString stringWithFormat:
        @"我是一个人，名字为：%@,年龄为%d.",_name,_age];
}
//定义一个只能在实现部分定义的test方法
-(void)test
{
    NSLog(@"--只在实现部分定义的test方法--");
}
+(void)foo
{
    NSLog(@"Person类的类方法，通过类名调用");
}

@end
