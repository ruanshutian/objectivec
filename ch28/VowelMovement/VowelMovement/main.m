//
//  main.m
//  VowelMovement
//
//  Created by Aron Ruan on 2022/3/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        //
        typedef void (^ArrayEnumerationBlock)(id,NSUInteger,BOOL *);
        
        //
        NSArray *originals = @[@"SauerKraut",@"Raygun",@"Big Nerd Ranch",@"Missisippi"];
        
        NSLog(@"original strings :%@",originals);
        
        NSMutableArray *devoweliedStrings = [NSMutableArray array];
        
        NSArray *vowels =@[@"a",@"e",@"i",@"o",@"u"];
        
        //声明Block变量
//        void(^devowels)(id ,NSUInteger,BOOL *);
        ArrayEnumerationBlock devowels;
        
        devowels=^(id string,NSUInteger i,BOOL *stop)
        {
            
            //
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            if(yRange.location!=NSNotFound)
            {
                *stop = YES;
                return;
            }
            //
            NSMutableString *newString =[NSMutableString stringWithString:string];
            
            for(NSString *s in vowels)
            {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
                
            }
            [devoweliedStrings addObject:newString];
        };
        
        [originals enumerateObjectsUsingBlock:devowels];
        
        NSLog(@"new Strings :%@",devoweliedStrings);
        
    }
    return 0;
}
