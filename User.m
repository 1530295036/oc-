//
//  User.m
//  User
//
//  Created by qkl on 2021/1/25.
//

#import "User.h"
static NSString*nation = nil;
@implementation User
+(NSString*)nation
{
    return nation;
}
+(void)setNation:(NSString*)newNation
{
    //对nation全局变量赋值
    if(![nation isEqualToString:newNation])
    {
        nation = newNation;
    }
}
@end
int main(int argc,char*argv[])
{
    @autoreleasepool {
        //为User的类变量赋值
        [User setNation:@"中国"];
        //访问User的类变量
        NSLog(@"User的nation类变量为：%@",[User nation]);
    }
}
