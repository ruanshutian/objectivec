//
//  BNRStockHolding.m
//  ch21Homework
//
//  Created by Aron Ruan on 2022/3/14.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(CGFloat)costInDollars
{
    return _purchaseSharePrice*_numberOfShares;
}
-(CGFloat)valueInDollars
{
    return _currentSharePrice*_numberOfShares;
}

@end
