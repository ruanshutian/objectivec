//
//  main.m
//  Callbacks
//
//  Created by Aron Ruan on 2022/3/17.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
       
        BNRLogger *logger = [[BNRLogger alloc]init];
        
        NSLog(@"----");
        
//        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLsatTime:) userInfo:nil repeats:YES];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
