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
//    return [NSString stringWithFormat:@"<&@$%@>",self.label,self.resaleValue];
    
    if(self.holder)
    {
        return [NSString stringWithFormat:@"<%@:  $%ld ,  assigned to %@>",self.label,self.resaleValue,self.holder];
    }else{
        return [NSString stringWithFormat:@"<%@ : $%ld unassigned >",self.label,self.resaleValue];
    }
    
}

-(void)dealloc
{
    NSLog(@"BNRAsset deallocing %@",self);
}

@end
