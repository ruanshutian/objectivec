//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Aron Ruan on 2022/3/11.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(CGFloat)getPurchaseSharePrice
{
    return _purchaseSharePrice;
}
-(CGFloat)getCurrentSharePrice
{
    return _currentSharePrice;
}
-(NSInteger)getNumberOfShare
{
    return _numberOfShares;
}

-(void)setPurchaseSharePrice:(CGFloat)p
{
    _purchaseSharePrice=p;
}
-(void)setCurrentSharePrice:(CGFloat)c
{
    _currentSharePrice=c;
}
-(void)setNumberOfShare:(NSInteger)num
{
    _numberOfShares = num;
}

-(CGFloat)costInDollars
{
    return _purchaseSharePrice*_numberOfShares;
}
-(CGFloat)valueInDollars
{
    return _currentSharePrice*_numberOfShares;
}
@end
