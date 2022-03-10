//
//  main.m
//  Ch16Homework
//
//  Created by Aron Ruan on 2022/3/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        const char *buf;
//        char buf[1000];
        
        scanf("%s", &buf);
        
        NSLog(@"%s",buf);
        NSString *res=[NSString stringWithUTF8String:buf];
//        NSString *str = [[NSString alloc]initWithBytes:as length:length encoding:NSUTF8StringEncoding];
        NSLog(@"%@",res);
        
//        NSString *ex=@"eee";
//        NSLog(@"%@",ex);
        
        char buffer[1000];     //使用一个缓冲区
        NSLog(@"请输入一个字符串：");
        scanf("%s",buffer);
        NSString * str = [NSString stringWithUTF8String:buffer];    //将缓冲区赋给NSString变量
        NSLog(@"字符串str＝%@",str);
        
    }
    return 0;
}

