//
//  main.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/11.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        BNRPerson *mikey=[[BNRPerson alloc]init];
        
        [mikey setWegihtInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        CGFloat height =[mikey heightInMeters];
        NSInteger weight=[mikey WegihtInKilos];
        NSLog(@"  %.2f,   %d",height,weight);
        
        float bim=[mikey bodyMassIndex];
        NSLog(@"%f",bim);
        
        NSMutableArray *arrays=[[NSMutableArray alloc]init];
        [mikey addYourceselfToArray:arrays];
        
//        [arrays addObject:mikey];
        NSLog(@"%@",arrays);
        
        
    }
    return 0;
}
