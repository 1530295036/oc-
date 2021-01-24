//
//  局部变量.m
//  Person
//
//  Created by qkl on 2021/1/23.
//

#import <Foundation/Foundation.h>
@interface Person:NSObject
{
    @public
    //定义两个实例变量
    NSString* _name;
    int _age;//int 后要空格
}
@end
int main(int argc,char*argv[])
{
    @autoreleasepool {
        //创建Person对象
        Person *p = [[Person alloc]init];
        //　通过指针变量来访问Person对象_name、_age实例变量
        NSLog(@"p变量的_name实例变量的值是：%@,p对象的_age成员变量的值是：%d",p->_name,p->_age);
        //直接为p的name实例变量赋值
        p->_name = @"吴佳佳";
        //直接为p的age实例变量赋值
        p->_age = 20;
        //再次通过指针变量来访问Person对象_name、_age实例变量
        NSLog(@"p变量的_name实例变量的值是：%@,p对象的_age成员变量的值是：%d",p->_name,p->_age);
        //创建第一个Person对象
        Person* p1 = [[Person alloc]init];
        //创建第二个Person对象
        Person* p2 = [[Person alloc]init];
        p1->_name = @"张三";
        p2->_name = @"李三";
    }
}
