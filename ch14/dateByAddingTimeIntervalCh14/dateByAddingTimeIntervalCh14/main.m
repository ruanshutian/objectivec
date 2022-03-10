//
//  main.m
//  dateByAddingTimeIntervalCh14
//
//  Created by Aron Ruan on 2022/3/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSDate *now=[NSDate date];
        
        NSLog(@"This NSDate object is lives at %p",now);
        NSLog(@"This date is %@",now);
        
//        double seconds =[now timeIntervalSince1970];
        //嵌套
        double seconds=[[NSDate date] timeIntervalSince1970];
        
        NSLog(@"It has been %f seconds since the start of 1970",seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        
        NSLog(@"in 100000seconds it will be %@",later);
        
        //NSCalendar
        NSCalendar *cal=[NSCalendar currentCalendar];
        NSLog(@"My Calender is %@",[cal calendarIdentifier]);
        
        unsigned long day =[cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month",day);
        
        
        NSDate *now2=[[NSDate alloc] init];
        NSLog(@"This NSDate object is lives at %p",now2);
        NSLog(@"This date is %@",now2);
        
        //nil
        NSDate *nn=nil;
        int nnres=[nn timeIntervalSince1970];
        NSLog(@"nnres = %d®",nnres);
        
        //id  指向任意类型的object-c对象的类型
        id delegate;
        
        
    }
    return 0;
}
