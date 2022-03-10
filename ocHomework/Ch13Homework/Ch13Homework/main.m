//
//  main.m
//  Ch13Homework
//
//  Created by Aron Ruan on 2022/3/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSHost *host=[NSHost currentHost];
        
        NSString *s=[host localizedName];
        
        NSLog(@"%@",s);
        
    }
    return 0;
}
