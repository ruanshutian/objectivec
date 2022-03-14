//
//  BNRPortfolio.h
//  ch21Homework
//
//  Created by Aron Ruan on 2022/3/14.
//

#import <Foundation/Foundation.h>
//@class BNRStockHolding;
#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : BNRStockHolding
{
    NSMutableArray *_holdings;
    NSMutableArray *_assets;
}

-(void)setAssets:(NSArray *)a;
-(NSArray *)assets;
-(void)addAsset:(NSArray *)a;
-(CGFloat)valueOfAssets;

//@property(nonatomic)BNRStockHolding* array;
-(void)setPort:(NSArray *)a;
-(NSArray*)ports;
-(void)addPort:(NSMutableArray *)a;

-(CGFloat)totalValue;


@end

NS_ASSUME_NONNULL_END
