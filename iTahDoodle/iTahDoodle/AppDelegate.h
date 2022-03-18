//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Aron Ruan on 2022/3/18.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property(nonatomic,strong)UIWindow *window;
@property(nonatomic)UITableView *taskTable;
@property(nonatomic)UITextField *taskTield;
@property(nonatomic)UIButton *interButton;

@property(nonatomic)NSMutableArray *tasks;

-(void)addTask:(id)sender;

@end

