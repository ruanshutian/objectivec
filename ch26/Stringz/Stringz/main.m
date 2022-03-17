//
//  main.m
//  Stringz
//
//  Created by Aron Ruan on 2022/3/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        //写文件
//        NSMutableString *str = [[NSMutableString alloc]init];
//
//        for(int i=0;i<10;i++)
//        {
//            [str appendString:@"Aaron is cool!\n"];
//        }
//
//        [str appendString:@"hello world"];
//
//        NSError *error;
//
//        BOOL success = [str writeToFile:@"/Users/aronruan/Desktop/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
//
//        if(success)
//        {
//            NSLog(@"done writing ");
//        }
//        else
//        {
//            NSLog(@"writing failed :%@",[error localizedDescription]);
//        }
       
        //读取文件
        NSError *error;
        NSString *str = [[NSString alloc]initWithContentsOfFile:@"/Users/aronruan/Desktop/cool.txt" encoding:NSASCIIStringEncoding error:&error];
        
        if(!str)
        {
            NSLog(@"read failed %@",[error localizedDescription]);
        }
        else
        {
            NSLog(@"cool.txt looks like this :%@",str);
        }
        
        
    }
    return 0;
}
