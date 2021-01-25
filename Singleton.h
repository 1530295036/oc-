//
//  main.m
//  单例
//如果一个类始终只能创建一个实例，则这个类被称为单例类。
//单例类可通过static全局变量来实现。
//该变量用于保存以创建的单例类对象，每次程序需要获取该实例时，程序先判断static全局变量是否为nil，如果为nil，则初始化一个实例并赋值给static全局变量。
//  Created by qkl on 2021/1/25.
//
//Singleton.h
#import <Foundation/Foundation.h>
@interface Singleton :NSObject;
+(id)instance;
@end
