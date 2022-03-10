//
//  main.m
//  ch14Homework
//
//  Created by Aron Ruan on 2022/3/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //方法一
//        NSDate *earlierDate=[NSDate date];
//        double x=[earlierDate timeIntervalSince1970];
//        NSLog(@"%f",x);
//
//        NSDateComponents *comps =[[NSDateComponents alloc] init];
//        [comps setYear:1997];
//        [comps setMonth:04];
//        [comps setDay:02];
//        [comps setHour:13];
//        [comps setMinute:10];
//        [comps setSecond:0];
//        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
//        NSDate *dateOfBirth = [g dateFromComponents:comps];
//        double y=[dateOfBirth timeIntervalSince1970];
//        NSLog(@"%f",y);
//
//        double res=x-y;
//        NSLog(@"%f",res);
        
        //方法二
        NSDateComponents *comps =[[NSDateComponents alloc] init];
        [comps setYear:1997];
        [comps setMonth:04];
        [comps setDay:02];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now =[NSDate date];
        double secondsSinceEarlier =[now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"%f",secondsSinceEarlier);
//        NSLog(@"%a",secondsSinceEarlierDate);
        
    }
    return 0;
}
