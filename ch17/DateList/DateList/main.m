//
//  main.m
//  DateList
//
//  Created by Aron Ruan on 2022/3/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60.0*60.0];
        
        NSArray *dateList = @[now,tomorrow,yesterday];
        
        
        
        
//        NSLog(@"%@",dateList);
//        NSLog(@"The first date is %@",dateList[0]);
//        NSLog(@"The second date is %@",dateList[1]);
//        NSLog(@"There are %lu dates",[dateList count]);
        
//        NSUInteger dateCount = [dateList count];
//        for(int i=0;i<dateCount;i++){
//            NSDate *d = dateList[i];
//            NSLog(@"Here is a date: %@",d);
//        }
        
        for(NSDate *d in dateList){
            NSLog(@"  %@",d);
        }
        
        NSLog(@"----");
//        NSMutableArray *mdateList =[NSMutableArray array];
        NSMutableArray *mdateList=[[NSMutableArray alloc] init];
        
        [mdateList addObject:now];
//        [mdateList addObject:yesterday];
        [mdateList addObject:tomorrow];
        
        //add
        [mdateList insertObject:yesterday atIndex:0];
        //remove
        [mdateList removeObject:mdateList[1]];
        
        for(NSDate *d in mdateList){
            NSLog(@"  %@ ",d);
        }
        
        //旧时代数组array
        NSArray *dateListAgo = [NSArray arrayWithObjects:yesterday,now,tomorrow,nil];
        NSLog(@"%@",[dateListAgo objectAtIndex:0]);
        NSLog(@"%@",[dateListAgo objectAtIndex:1]);
        NSLog(@"%@",[dateListAgo objectAtIndex:2]);
        
    }
    return 0;
}
