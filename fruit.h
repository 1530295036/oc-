//
//  main.m
//  fruit
//
//  Created by qkl on 2021/1/28.
//

#import <Foundation/Foundation.h>
@interface fruit:NSObject{
    NSString* name;
    int age;
    NSString* origin;
}
-(NSString*)name;
-(NSString*)origin;
-(int)age;
-(void)setName:(NSString*)inputName;
-(void)setAage:(int)inputAage;
@end
