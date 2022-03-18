//
//  main.m
//  stockz
//
//  Created by Aron Ruan on 2022/3/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock;
        
        stock=[NSMutableDictionary dictionary];
        
        [stock setObject:@"AAAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock =[NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/USers/aronruan/Desktop/stocks.plist" atomically:YES];
        
        NSArray *stockList =[NSArray arrayWithContentsOfFile:@"/USers/aronruan/Desktop/stocks.plist"];
        for(NSDictionary *d in stockList)
        {
            NSLog(@"I have %@ shares of %@",[d objectForKey:@"shares"],[d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}
