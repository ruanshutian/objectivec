//
//  main.m
//  Groceries
//
//  Created by Aron Ruan on 2022/3/11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        //1
//        NSMutableArray *dateList = [[NSMutableArray alloc] init];
//        [dateList addObject:@"loaf of bread"];
//        [dateList addObject:@"container of milk"];
//        [dateList addObject:@"stick of buffer"];
//
//        for(NSString *s in dateList){
//            NSLog(@"  %@  ",s);
//        }
        
        //2
        NSString *wordString = [NSString stringWithContentsOfFile:@"/Users/aronruan/Desktop/objectivec/ch17/Groceries/Groceries/word" encoding:NSUTF8StringEncoding error:NULL];
//        NSLog(@"%@",nameString);
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
//        for(NSString *n in words){
//            NSLog(@" %@ ",n);
//        }
        
        NSString *nameString = [NSString stringWithContentsOfFile:@"/Users/aronruan/Desktop/objectivec/ch17/Groceries/Groceries/name" encoding:NSUTF8StringEncoding error:NULL];
//        NSLog(@"%@",nameString);
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
//        for(NSString *n in names){
//            NSLog(@" %@ ",n);
//        }
        
        for(NSInteger i=0;i<[names count];i++)
        {
            for(NSInteger j=0;j<[words count];j++)
            {
                if(names[i]==words[j])
                {
                    NSLog(@" %@ ",names[i]);
                    
                }
            }
        }
        
        
        
        
        
        
    }
    return 0;
}
