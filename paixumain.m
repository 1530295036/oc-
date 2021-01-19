//*(arr+1)+2 == a[1]+2 == &arr[1][2]; *arr + 1 + 2 == *arr + 3 ==&a[0][3]
//  main.m
//  text
//
//  Created by qkl on 2021/1/17.
//
//arr是数组，arr+i == &a[i],*(arr+i)==a[i]
//下面是利用指针对数组快速排序
#import<Foundation/Foundation.h>
//将指定数组的i和j索引的元素交换
void swap(int *date,int i,int j)
{
    int tmp;
    tmp = *(date+i);
    *(date + i) = *(date + j);
    *(date+j) = tmp;
}
//小于分界值的在左边，大于分界值的在右边,以第一个元素作为分界值
void subSort(int*date,int start,int end)
{
    if(start<end)
    {
        int base = *(date+start);
        int i = start;
        int j = end+1;
        while(true)
        {
            //找到大于分界值的元素的索引，或i已经到了end处
            while(i<end&&date[++i]<=base);
            while (j>start&&date[--j]>=base);
            if(i<j){
                swap(date,i,j);
            }else{
                break;
            }
        }
        swap(date,start,j-1);
        subSort(date, j+1, end);
    }
}
void quickSort(int*date,int len)
{
    subSort(date, 0, len-1);
}
void printArray(int*array,int len)
{
    for(int*p=array;p<array+len;p++)
    {
        printf("%d，",*p);
    }
    printf("\n");
}
int main(int argc,char*argv[])
{
    @autoreleasepool
    {
        int date[]={9,-16,22,123,-70,-90,21,33,10};
        //sizeof(date)是数组所占字节数，sizeof（date【0】）是数组中第一个数所占字节数，相除得出长度
        int len=sizeof(date)/sizeof(date[0]);
        NSLog(@"排序之前");
        printArray(date, len);
        quickSort(date, len);
        NSLog(@"排序之后");
        printArray(date, len);
        
    }
}
