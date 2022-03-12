//
//  main.m
//  ch2-Homework
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        BNRTStockHolding *BNR0 = [[BNRTStockHolding alloc]init];
        BNR0.purchaseSharePrice = 2.30;
        BNR0.currentSharePrice = 4.50;
        BNR0.numberOfShares = 40;
        
        BNRTStockHolding *BNR1 = [[BNRTStockHolding alloc]init];
        BNR1.purchaseSharePrice = 12.19;
        BNR1.currentSharePrice = 10.56;
        BNR1.numberOfShares = 90;
        
        BNRTStockHolding *BNR2 = [[BNRTStockHolding alloc]init];
        BNR2.purchaseSharePrice = 45.10;
        BNR2.currentSharePrice = 49.51;
        BNR2.numberOfShares = 210;
        
        NSMutableArray *NSarray = [[NSMutableArray alloc]init];
        
        [NSarray addObject:BNR0];
        [NSarray addObject:BNR1];
        [NSarray addObject:BNR2];
        
        //ch20
        NSMutableArray *array2=[[NSMutableArray alloc]init];
        
        BNRForeignStockHolding *BNR = [[BNRForeignStockHolding alloc]init];
        
        BNR.purchaseSharePrice=2.30;
        BNR.currentSharePrice=4.50;
        BNR.numberOfShares = 40;
        BNR.conversionRate=0.94;
        
        [array2 addObject:BNR];
        
        for(BNRForeignStockHolding *b in array2)
        {
            NSLog(@"%.2f",[b purchaseSharePrice]);
            NSLog(@"%.2f",[b currentSharePrice]);
            NSLog(@"%ld",[b numberOfShares]);
            NSLog(@"%.2f",[b conversionRate]);
            NSLog(@"%f",[b costInDollars]);
            NSLog(@"%f",[b valueInDollars]);
        }
        
//        NSLog(@"%@",array2);
//        NSLog(@"%.2f",[array2[0] purchaseSharePrice]);
        
        
    }
    return 0;
}
