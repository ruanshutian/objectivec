//
//  main.m
//  ch2-Homework
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        BNRPortfolio *port=[[BNRPortfolio alloc]init];
        
        NSMutableArray *stock = [[NSMutableArray alloc] init];
        
        BNRStockHolding *BNR0 = [[BNRStockHolding alloc]init];
        BNR0.purchaseSharePrice = 2.30;
        BNR0.currentSharePrice = 4.50;
        BNR0.numberOfShares = 40;
        
        BNRStockHolding *BNR1 = [[BNRStockHolding alloc]init];
        BNR1.purchaseSharePrice = 12.19;
        BNR1.currentSharePrice = 10.56;
        BNR1.numberOfShares = 90;
        
        BNRStockHolding *BNR2 = [[BNRStockHolding alloc]init];
        BNR2.purchaseSharePrice = 45.10;
        BNR2.currentSharePrice = 49.51;
        BNR2.numberOfShares = 210;
        
        [stock addObject:BNR0];
        [stock addObject:BNR1];
        [stock addObject:BNR2];
        
        [port addPort:stock];
        
//        [port addPort:BNR0];
//        [port addPort:BNR1];
//        [port addPort:BNR2];
        
        NSLog(@"%f",[port totalValue]);
        
        
        
    }
    return 0;
}
