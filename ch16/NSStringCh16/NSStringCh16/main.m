//
//  main.m
//  NSStringCh16
//
//  Created by Aron Ruan on 2022/3/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSString *lament = @"why me!?";
        NSLog(@"%@",lament);
        
        NSString *slogan = @"I \u2661 New York";
        NSString *dataString = [NSString stringWithFormat:@"The data is %@",lament];
        
        NSLog(@"%@",dataString);
        
        NSUInteger charCount = [dataString length];
        NSLog(@"%d",charCount);
        
        if([slogan isEqualToString:lament])
        {
            NSLog(@"%@  and  %@  are equal",slogan,lament);
        }
        
        NSString *angryText = @"That makes me so mad ";
        NSString *reallyAngryText = [angryText uppercaseString];
        NSLog(@"%@",reallyAngryText);
        
        NSString *listOfNames=@"hello world";
        NSString *name = @"world";
        NSRange match = [listOfNames rangeOfString:name];
        if(match.location == NSNotFound)
        {
            NSLog(@"No match");
        }
        else
        {
            NSLog(@"Match");
        }
        //
        NSString *name2 = @"WoRld";
        match = [listOfNames localizedStandardRangeOfString:name2];
        if(match.location == NSNotFound)
        {
            NSLog(@"No match");
        }
        else
        {
            NSLog(@"Match");
        }
        
    }
    return 0;
}
