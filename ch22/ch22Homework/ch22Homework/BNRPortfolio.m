//
//  BNRPortfolio.m
//  ch21Homework
//
//  Created by Aron Ruan on 2022/3/14.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio()
{
    NSMutableArray *ports;
    NSMutableArray *assets;
}

@end

@implementation BNRPortfolio

//-(void)setAssets:(NSArray *)a
//{
//    _assets = [a mutableCopy];
//}
//-(NSArray *)assets
//{
//    return [_assets copy];
//}
//-(void)addAsset:(BNRStockHolding *)a
//{
//    if(!_assets)
//    {
//        _assets = [[NSMutableArray alloc]init];
//    }
//    [_assets addObject:a];
//}

//-(CGFloat)valueOfAssets
//{
//    CGFloat sum=0;
//    for(BNRStockHolding *a in _assets)
//    {
//        sum=[a currentSharePrice];
//    }
//    return  sum;
//}
-(void)setPort:(NSArray *)a
{
    _holdings = [a mutableCopy];
}

-(NSArray*)ports
{
    return [_holdings copy];
}

-(void)addPort:(BNRStockHolding *)a
{
    if(!_holdings)
    {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:a];
}

-(CGFloat)totalValue
{
    CGFloat total=0;
    for(BNRStockHolding *a in _holdings)
    {
//        total+=[a currentSharePrice]+[a purchaseSharePrice]+[a numberOfShares];
//        NSLog(@"This is TotalValue %@",a);
        for(BNRStockHolding *b in a)
        {
            total+=[b currentSharePrice]+[b purchaseSharePrice]+[b numberOfShares];
//            NSLog(@"This is TotalValue %@",b);
        }
    }
    NSLog(@"This is TotalValue %f",total);
    return total;
}

@end
