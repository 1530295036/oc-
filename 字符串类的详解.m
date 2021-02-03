//
//  main.m
//  lei
//
//  Created by qkl on 2021/2/3.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *greeting = @"Hello";//直接赋值定义字符串类型的变量
        NSLog(@"sayHello = %@\n",greeting);//输出这个值
        
        NSString *language = @"Objective-C";
        //通过 initWithFormat:方法，亏在另一个变量的基础上，初始化一个字符串变量
        NSString *sayHello = [[NSString alloc]initWithFormat:@"Hello,%@!",language];
        NSLog(@"sayHello = %@\n",sayHello);
        
        int starCount = 10;
        NSString *tip =[[NSString alloc]initWithFormat:@"You got %d stars",starCount];
        NSLog(@"tip = %@\n",tip);
        
        //通过给对象发送lowercaString的消息，可以获得字符串的大小写字母的状态
        NSLog(@"tip.lowercaseString = %@\n",[tip lowercaseString]);
        //将字符串单词中的首字母转换为大写样式并输出
        NSLog(@"tip.capitalizedString = %@\n",[tip capitalizedString]);
        
        //检测字符串头部是否包含指定的字符串
        NSLog(@"tip.hasRrefix = %d\n",[tip hasPrefix:@"You"]);
        //检测字符串尾部是否包含指定的字符串
        NSLog(@"tip.hasSuffix = %d\n",[tip hasSuffix:@"You"]);
        //检测字符串是否包含指定的字符串
        NSLog(@"containsString = %d\n",[tip containsString:@"star"]);
        //获取字符串的长度
        NSLog(@"tip.length = lu\n",(unsigned long)[tip length]);
        //将字符串转化为数字
        NSString *score = @"80";
        NSLog(@"score = %d\n",[score intValue]);
     
        NSString *locationX = @"10.2";
        //将字符串转换为浮点类型的数据，并在控制台输出数据的值。
        NSLog(@"locationX = %f\n",[locationX floatValue]);
        
        //判断两个字符串是否相同
        NSLog(@"tip is equal to you get 10 stars = %d\n",[tip isEqualToString:@"You got 10 stars"]);
        
        //在一个字符串中搜索另一个字符串,首先获得某个字符串在当前字符串中的范围对象
        NSRange range = [tip rangeOfString:@"star"];
        NSLog(@"range.location = %lu\n",(unsigned long)range.location);
        NSLog(@"range.length = %li\n",(unsigned long)range.length);
        //获得并输出在字符串中的第三个字符
        NSLog(@"tip.characterAtIndex.2 = %c\n",[tip characterAtIndex:2]);
        //获得并输出在字符串中的第9个字符和后面所有的字符
        NSLog(@"tip.substringFromIndex.2 = %@\n",[tip substringFromIndex:8]);
        //获得并输出从字符串头部到第9个字符之间的所有字符
        NSLog(@"tip.substringToIndex.8 = %@\n",[tip substringToIndex:8]);
        //自定义范围，索引位置为4，长度为3
        NSRange tipRange = NSMakeRange(4, 3);
        NSLog(@"tip.substringWithRange = %@\n",[tip substringWithRange:tipRange]);
        
        //将字符串中指定的内容替换为其他内容
        NSString *replacedString = [tip stringByReplacingOccurrencesOfString:@"stars" withString:@"apples"];
        NSLog(@"replacedString = %@\n",replacedString);
        //在字符串的末尾添加新的字符串
        NSString *greetingSwift = [greeting stringByAppendingString:@"swift!"];
        NSLog(@"greetingSwift = %@\n",greetingSwift);
        
    }
    return 0;
}
