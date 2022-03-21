//
//  main.m
//  Appliances
//
//  Created by Aron Ruan on 2022/3/21.
//

#import <Foundation/Foundation.h>
#include "BNRAppliance.h"
#include "BNROwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        BNRAppliance *bnr = [[BNRAppliance alloc]init];
        
        NSLog(@"%@",bnr.productName);
        NSLog(@"%ld",bnr.voltage);
        NSLog(@"%@",bnr);
        
        BNRAppliance *a =[[BNRAppliance alloc]initWithProductName:@"Toaster"];
//        [a setProductName:@"Toaster"];
        NSLog(@"%@",a.productName);
        NSLog(@"%ld",a.voltage);
        NSLog(@"%@",a);
        
        [a setProductName:@"Washing Machine"];
        [a setVoltage:200];
        
        NSLog(@"%@",a);
        
//        BNROwnedAppliance *b=[[BNROwnedAppliance alloc]init];
        
        
    }
    return 0;
}
