//
//  main.m
//  ImageFetch
//
//  Created by Aron Ruan on 2022/3/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSURL *url = [NSURL URLWithString:@"https://exp-picture.cdn.bcebos.com/025d87c0affce1863087bfc61f1fbee435daeb3f.jpg"];
        
        NSURLRequest *request =[NSURLRequest requestWithURL:url];
        
        NSError *error = nil;
        
//        NSURLSession *session = [NSURLSession sharedSession];
//        NSURLSessionDataTask *data = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
//         }];
        
//        NSDate *data = [NSURLSession cancelPreviousPerformRequestsWithTarget:request];
////        NSDate *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
//
//
//        if(!data){
//            NSLog(@"----");
//            NSLog(@"fetch failed %@",[error localizedDescription]);
//            return 1;
//        }
//        NSLog(@"=====");
//        NSLog(@"The file is %lu bytes",(unsigned long)[data ]);
        
//        BOOl written =[data w]
        
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = desktops[0];
        NSLog(@" %@ ",desktops);
        NSLog(@"%@",desktopPath);
        
//        NSArray *f = NSSearchPathForDirectoriesInDomains(NSApplicationDirectory, NSUserDomainMask, YES);
//        NSArray *f = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSArray *f = NSSearchPathForDirectoriesInDomains(NSUserDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSDownloadsDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSMoviesDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSMusicDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSPicturesDirectory, NSUserDomainMask, YES);
        f = NSSearchPathForDirectoriesInDomains(NSTrashDirectory, NSUserDomainMask, YES);
        
        
//        NSString *ff = f[0];
        NSLog(@" %@ ",f);
//        NSLog(@"%@",ff);
        
        
    }
    return 0;
}
