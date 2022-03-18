//
//  main.m
//  CH30HOMEWORK
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
        
        [stock setObject:@"aron111" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:520] forKey:@"shares"];
//        NSDate *date=[[NSDate alloc]init];
//        NSInteger intt=5;
//        CGFloat floatt=5.20;
//        BOOL bo=TRUE;
        [stock setObject:[[NSDate alloc]init] forKey:@"date"];
        [stock setObject:[NSNumber numberWithBool:TRUE] forKey:@"bool"];
        [stock setObject:[NSNumber numberWithFloat:5.2] forKey:@"float"];
        [stock setObject:[NSNumber numberWithInteger:555] forKey:@"Integer"];
        
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/Users/aronruan/Desktop/stocks.plist" atomically:YES];
//        [stocks writeToFile:@"/Users/aronruan/Desktop/stocks.plist" atomically:YES];
        
        
        NSLog(@"%@",stocks);
        
    }
    return 0;
}
