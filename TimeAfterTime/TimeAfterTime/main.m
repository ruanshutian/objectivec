//
//  main.m
//  TimeAfterTime
//
//  Created by Aron Ruan on 2022/3/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSDate *now=[NSDate date];
        NSLog(@"This NSData object lives at %p",now);

        //%@输出相应对象的描述信息
        NSLog(@"The data is %@",now);
        
        double seconds =[now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);
        
//        double testSenconds=[NSDate timeIntervalSince1970];
//        NSDate *testNow = [now date];
//
//        testSenconds = [now fooIntervalSince1970];
        
//        double testSeconds = [now timeintervalsince1970];//大小写
        
//        printf("%d",NSOKBUtton);
        
    }
    return 0;
}
