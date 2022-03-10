//
//  main.m
//  TimesTwo
//
//  Created by Aron Ruan on 2022/3/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
//        NSDate *currentTime = nil;
//        NSLog(@"currentTime's value is %p",currentTime);
        
        NSDate *currentTime=[NSDate date];
        NSLog(@"currentTime's value is %p",currentTime);
        
        NSDate *startTime=currentTime;
        sleep(2);
        currentTime = [NSDate date];
        NSLog(@"currentTime = %p",currentTime);
        NSLog(@"startTime = %p",startTime);
        
        free(NSDate*currentTime);
        NSLog(@"currentTime = %p",currentTime);
        currentTime=nil;
        NSLog(@"currentTime = %p",currentTime);
        
    }
    return 0;
}
