//
//  BNRForeignStockHolding.m
//  ch2-Homework
//
//  Created by Aron Ruan on 2022/3/12.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(CGFloat)costInDollars
{
    return [super costInDollars]*_conversionRate*_conversionRate;
}
-(CGFloat)valueInDollars
{
    return [super valueInDollars]*_conversionRate*_conversionRate;
}

@end
