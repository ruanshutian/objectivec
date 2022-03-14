//
//  BNRForeignStockHolding.h
//  ch2-Homework
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding

@property(nonatomic)CGFloat conversionRate;


@end

NS_ASSUME_NONNULL_END
