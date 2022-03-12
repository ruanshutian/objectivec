//
//  main.m
//  ch19
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        BNRPerson *mikey=[[BNRPerson alloc]init];
        [mikey setHeightInMeters:1.8];
        [mikey setWeightInKilos:180];
        
        NSLog(@"%@",mikey);
        
        NSLog(@"%.2f",[mikey heightInMeters]);
        NSLog(@"%ld",[mikey weightInKilos]);
        
        //dot notation
        NSLog(@"%.2f",mikey.heightInMeters);
        NSLog(@"%ld",mikey.weightInKilos);
        
        
    }
    return 0;
}
