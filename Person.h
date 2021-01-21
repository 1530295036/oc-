//
//  main.m
//  Person
//
//  Created by qkl on 2021/1/21.
//

#import <Foundation/Foundation.h>
@interface Person:NSObject
{
    //定义两个成员变量
    NSString* _name;
    int _age;
}
//下面定义了一个set Name：andAge：方法
-(void)setName:(NSString*)name andAge:(int)age;
//下面定义了一个say：方法，并不提供实现
-(void)say:(NSString*)content;
//下面定义了一个不带形参的info方法
-(NSString*)info;
//定义一个类方法
+(void)foo;
@end

