//
//  mainAB.m
//  方法重写
//
//  Created by qkl on 2021/1/28.
//

#import "ClassA.h"
#import "ClassB.h"
int main(int argc,const char*argv[]){
    @autoreleasepool {
        ClassB *classB = [[ClassB alloc]init];
        [ClassB setX];
        [ClassB printX];
    }
    return 0;
}
