//
//  BNRAsset.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/14.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *)description
{
    return [NSString stringWithFormat:@"<&ld:$%ld>",self.label,self.resaleValue];
}

-(void)dealloc
{
//    NSLog(@"BNRAsset deallocing %@",self);
}

@end
