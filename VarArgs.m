//
//  VarArgs.m
//  可变形参
//
//  Created by qkl on 2021/1/28.
//
#import "VarArgs.h"
@implementation VarAgrs
-(void)test:(NSString *)name, ...
{
    //定义一个指针变量，该指针变量可指向可变参数列表
    va_list argList;
    //如果第一个name参数存在，才需要处理后面的参数
    if (name) {
        //由于name参数并不在可变参数列表中，因此先处理name参数
        NSLog(@"%@",name);
        //让argList指向第一个可变参数列表的第一个参数，开始提取可变参数列表的参数
        va_start(argList, name);
        //va_arg用于提取argList指针当前指向的参数，并将指针移动到指向下一个参数
        //arg变量用于保存当前获取的参数，如果该参数不为nil，进入循环体
        NSString* arg = va_arg(argList, id);
        while (arg) {
            //打印出每一个参数
            NSLog(@"%@",arg);
            //再次提取下一个参数，并将指针移动到指向下一个参数
            arg = va_arg(argList, id);
        }
        //释放指针，结束提取
        va_end(argList);
    }
}
@end

int main(int argc,char * argv[])
{
    @autoreleasepool {
        VarAgrs* va =[[VarAgrs alloc]init];
        [va test:@"IOS",@"Android",@"iPhone",nil];
    }
}
//当调用test： 方法时，可以传入多个字符串作为参数值。本质上，这个可变参数也是一个类似数组的结构。
//test：方法使用while语句来循环获取可变形参的参数，while循环先判断当前获取的参数值是否为你了、，如果参数为nil，则表示参数已经被取完，从而跳出循环。否则，在循环体中使用当前获取的值。至于怎样使用，则完全取决于程序的需要当程序调用test： 方法时，为了明确告诉程序可变形参的结束点，将最后一个参数设为nil，这样就可保证while循环迭代获取可变形参时能正常跳出循环
//注意：个数可变的形参只能处于形参列表的最后，也就是说一个方法中最多只能有一个长度可变的形参
