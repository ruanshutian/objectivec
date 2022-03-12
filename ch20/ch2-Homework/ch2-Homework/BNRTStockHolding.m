//
//  BNRTStockHolding.m
//  ch2-Homework
//
//  Created by Aron Ruan on 2022/3/12.
//

#import "BNRTStockHolding.h"

@implementation BNRTStockHolding


-(CGFloat)costInDollars
{
    return _purchaseSharePrice*_numberOfShares;
}
-(CGFloat)valueInDollars
{
    return _currentSharePrice*_numberOfShares;
}

@end
