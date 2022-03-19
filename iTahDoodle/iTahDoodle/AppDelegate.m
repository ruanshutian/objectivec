//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by Aron Ruan on 2022/3/18.
//

#import "AppDelegate.h"



@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CGRect winFrame = [[UIScreen mainScreen]bounds];
    UIWindow *theWindow =[[UIWindow alloc]initWithFrame:winFrame];
    self.window =theWindow;
    NSLog(@"%@",self.window);
    
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width,winFrame.size.height-100);
    
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228,40, 72, 31);
    
    self.taskTable = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];

    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.taskTable registerClass:[UITableViewCell class]forCellReuseIdentifier:@"Cell"];
    
    self.taskField =[[UITextField alloc]initWithFrame:fieldFrame];
    self.taskField.borderStyle =UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task ,tap Insert ";
    
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    [self.insertButton addTarget:self action:@selector((addTask:)) forControlEvents:UIControlEventTouchUpInside];
    
    [self.window addSubview:self.taskTable];
    [self.window addSubview:self.taskField];
    [self.window addSubview:self.insertButton];
    
    self.window.backgroundColor=[UIColor whiteColor];
//    self.window.hidden=NO; 
    [self.window makeKeyAndVisible];
    NSLog(@"HELLOE");
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
