//
//  Singleton.m
//  单例
//
//  Created by qkl on 2021/1/25.
//

#import "Singleton.h"
static id instance = nil;
@implementation Singleton
+(id)instance
{
    if(!instance)
    {
        //创建一个Singleton实例，并将该实例献给instance全局变量
        instance = [[super alloc]init];
    }
    return instance;
}
@end
int main(int argc,char*argv[])
{
    @autoreleasepool {
        //判断两次获取的实例是否相等，程序会返回1
        NSLog(@"%d",[Singleton instance]==[Singleton instance]);
    }
}
