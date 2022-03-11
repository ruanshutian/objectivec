//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Aron Ruan on 2022/3/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject
{
    CGFloat _purchaseSharePrice;
    CGFloat _currentSharePrice;
    NSInteger _numberOfShares;
}

-(CGFloat)getPurchaseSharePrice;
-(CGFloat)getCurrentSharePrice;
-(NSInteger)getNumberOfShare;

-(void)setPurchaseSharePrice:(CGFloat)p;
-(void)setCurrentSharePrice:(CGFloat)c;
-(void)setNumberOfShare:(NSInteger)n;


-(CGFloat)costInDollars;
-(CGFloat)valueInDollars;

@end

NS_ASSUME_NONNULL_END
