//
//  main.m
//  Stocks
//
//  Created by Aron Ruan on 2022/3/11.
//

#import <Foundation/Foundation.h>
#import"BNRStockHolding.h"
//#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        BNRStockHolding *b1=[[BNRStockHolding alloc]init];
        BNRStockHolding *b2=[[BNRStockHolding alloc]init];
        BNRStockHolding *b3=[[BNRStockHolding alloc]init];
        
        NSMutableArray *Narray=[[NSMutableArray alloc]init];
        [Narray addObject:b1];
        [Narray addObject:b2];
        [Narray addObject:b3];
        
        NSLog(@" %@ ",Narray);
        
        [b1 setPurchaseSharePrice:2.3];
        [b1 setCurrentSharePrice:4.5];
        [b1 setNumberOfShare:40];
        
        [b2 setPurchaseSharePrice:12.19];
        [b2 setCurrentSharePrice:10.56];
        [b2 setNumberOfShare:90];
//        NSInteger x=[b2 getNumberOfShare];
//        NSLog(@" %ld ",x);
        
        [b3 setPurchaseSharePrice:45.10];
        [b3 setCurrentSharePrice:49.51];
        [b3 setNumberOfShare:210];
        
        for(NSInteger i=0;i<[Narray count];i++)
        {
            NSLog(@"%f",[Narray[i] getPurchaseSharePrice]);
            NSLog(@"%f",[Narray[i] getCurrentSharePrice]);
            NSLog(@"%ld",[Narray[i] getNumberOfShare]);
            NSLog(@"----");
        }
        
    }
    return 0;
}
