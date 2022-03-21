//
//  BNRAppliance.m
//  Appliances
//
//  Created by Aron Ruan on 2022/3/21.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

-(instancetype)init
{
    
//    self=[super init];
//
//    if(self)
//    {
//        _voltage =100;
//    }
//
//    return self;
    
    return [self initWithProductName:@"Unkown"];
    
}

-(instancetype)initWithProductName:(NSString *)pn
{
    self=[super init];
    
    if(self)
    {
//        _productName = [pn copy];
//        _voltage = 111;
        
        [self setProductName:pn];
        [self setVoltage:300];
        
    }
    return self;
    
    
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@ :%d volts>",self.productName,self.voltage];
}

@end
