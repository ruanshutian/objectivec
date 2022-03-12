//
//  BNRTStockHolding.h
//  ch2-Homework
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRTStockHolding : NSObject
@property(nonatomic)CGFloat purchaseSharePrice;
@property(nonatomic)CGFloat currentSharePrice;
@property(nonatomic)NSInteger numberOfShares;

-(CGFloat)costInDollars;
-(CGFloat)valueInDollars;

@end

NS_ASSUME_NONNULL_END
