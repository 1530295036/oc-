//
//  main.m
//  User
//static不能用于修饰成员变量，只能修饰局部变量、全局变量和函数、static修饰局部变量表示将该局部变量存储到静态存储区。static修饰的全局变量用于限制该全局变量只能在当前源文件中访问。static修饰函数用于限制该函数只能在当前源文件中调用
//oc不支持java类变量，虽然类变量不常用，但有时候还需要使用它，可通过内部全局变量来模拟类变量
//实现：在类实现部分定义一个static修饰的全局变量，并提供一个类方法来暴露该全局变量。
//  Created by qkl on 2021/1/25.
//

#import <Foundation/Foundation.h>
@interface User: NSObject
+(NSString*)nation;
+(void)setNation : (NSString*)newNation;
@end
