//
//  main.m
//  Constants
//
//  Created by Aron Ruan on 2022/3/16.
//

#import <Foundation/Foundation.h>
//#define MAX(A,B)  ((A)>(B)?(A):(B))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSLog(@" \\u3c0 is %f",M_PI);
        
        NSLog(@"%d is larger ",MAX(10, 12));
        
//        NSLog(@"%d  ",(10>12?10:12));
        
        NSLocale *here = [NSLocale currentLocale];
//        NSString *currency = [here objectForKey:@"currency"];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@",currency);
        
    }
    return 0;
}
