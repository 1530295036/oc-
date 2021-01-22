//oc提供了一个self关键字，该关键字总是指向调用该方法的对象，self最大的作用是让类中的一个方法访问该类的另一个方法或成员变量
#import"Dog.h"
@implementation Dog
//实现一个jump方法
-(void)jump
{
  NSlog(@"正在执行jump方法");
 }
 //实现一个run方法，run方法需要借助jump方法
 -(void)run
 {
  Dog*d=[[Dog alloc]init];//父类指针指向子类对象
  [d jump];
  NSLog(@"正在执行run方法");
 }
@end

//使用这种方法来定义Dog类，当self出现在某个方法体中时，所代表的对象是不确定的，但其类型是确定的
此时self所代表的对象只是当前类的实例，当这个方法被调用时，所代表的对象才被确定
谁调用这个方法，self就代表谁
由此可见，self不能出现在类方法中，因为类方法调用者是类本身，而不是对象，如果在类方法中使用self关键字，这个self关键字就不能确定代表谁了
将上面Dog类的是实现部分改写：
#import"Dog.h"
@implementation Dog
//实现一个jump方法
-(void)jump
{
  NSlog(@"正在执行jump方法");
 }
 //实现一个run方法，run方法需要借助jump方法
 -(void)run
 {
 [self jump];
 NSLog(@"正在执行run方法");
 }
@end
