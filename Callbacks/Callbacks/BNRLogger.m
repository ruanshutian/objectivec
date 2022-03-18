//
//  BNRLogger.m
//  Callbacks
//
//  Created by Aron Ruan on 2022/3/17.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter =nil;
    if(!dateFormatter)
    {
        dateFormatter =[[NSDateFormatter alloc]init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"create dateForMatter ");
    }
    return  [dateFormatter stringFromDate:self.lastTime];
}
-(void)updateLastTime:(NSTimer *)t
{
    NSDate *now =[NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@ ",self.lastTimeString);
}

@end
