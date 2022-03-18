//
//  main.m
//  ImageFetch
//
//  Created by Aron Ruan on 2022/3/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        /// 向网络请求数据
//            // 1.创建url
//            // 请求一个网页
//            NSString *urlString = @"http://www.cnblogs.com/mddblog/p/5215453.html";
//
//        // 一些特殊字符编码
//            urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
//            NSURL *url = [NSURL URLWithString:urlString];
//
//            // 2.创建请求 并：设置缓存策略为每次都从网络加载 超时时间30秒
//            NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:30];
//
//            // 3.采用苹果提供的共享session
//            NSURLSession *sharedSession = [NSURLSession sharedSession];
//
//            // 4.由系统直接返回一个dataTask任务
//            NSURLSessionDataTask *dataTask = [sharedSession dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//                // 网络请求完成之后就会执行，NSURLSession自动实现多线程
//                NSLog(@"%@",[NSThread currentThread]);
//                if (data && (error == nil)) {
//                    // 网络访问成功
//                    NSLog(@"data=%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
//                } else {
//                    // 网络访问失败
//                    NSLog(@"error=%@",error);
//                }
//            }];
//
//            // 5.每一个任务默认都是挂起的，需要调用 resume 方法
//            [dataTask resume];
        
        
        NSURL *url = [NSURL URLWithString:@"https://exp-picture.cdn.bcebos.com/025d87c0affce1863087bfc61f1fbee435daeb3f.jpg"];
        NSURLRequest *request =[NSURLRequest requestWithURL:url];
        NSError *error = nil;
//        NSDate *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
//        1.确定URL
//        NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"http://120.25.226.186:32812/login?username=520it&pwd=520it&type=JSON"]];
//        2. 创建请求对象
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        3.创建绘画对象
//        NSURLSession *session=[NSURLSession sharedSession];
//        4.创建Task
//        注意：该block是在子线程中调用的，如果拿到数据之后要做一些UI刷新操作，那么需要回到主线程刷新
        /*
         第一个参数:请求对象
         第二个参数:completionHandler 当请求完成之后调用
         data:响应体信息
         response:响应头信息
         error:错误信息当请求失败的时候 error有值
         */
//        NSURLSessionDataTask *data =[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//            NSLog(@"----");
//        }]
        NSURLSession *session=[NSURLSession sharedSession];
        NSURLSessionDataTask *dataTask =[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            NSLog(@"%@",[NSThread currentThread]);
                    if (data && (error == nil)) {
                        // 网络访问成功
                        NSLog(@"data=%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
                    } else {
                        // 网络访问失败
                        NSLog(@"error=%@",error);
                    }
            NSLog(@"%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
            NSLog(@"%ld",[data length]);
            [data writeToFile:@"/Users/aronruan/Desktop/test.png" atomically:YES];
//            NSDate *readData =[NSDate data]
        } ];
        
        //5.执行Task
        //注意：刚创建出来的task默认是挂起状态的，需要调用该方法来启动任务（执行任务）
        [dataTask resume];
//        for(int i=0;i<1000;i++)
//        {
//            NSLog(@"hello %d",i);
//        }
        sleep(10);
        
//        NSDate *readData = [NSDate data]
        
        //----------------------
//        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
//        NSString *desktopPath = desktops[0];
//        NSLog(@" %@ ",desktops);
//        NSLog(@"%@",desktopPath);
        
//        NSArray *f = NSSearchPathForDirectoriesInDomains(NSApplicationDirectory, NSUserDomainMask, YES);
//        NSArray *f = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
//        NSArray *f = NSSearchPathForDirectoriesInDomains(NSUserDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSDownloadsDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSMoviesDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSMusicDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSPicturesDirectory, NSUserDomainMask, YES);
//        f = NSSearchPathForDirectoriesInDomains(NSTrashDirectory, NSUserDomainMask, YES);
        
        
//        NSString *ff = f[0];
//        NSLog(@" %@ ",f);
//        NSLog(@"%@",ff);
        
        
    }
    return 0;
}
