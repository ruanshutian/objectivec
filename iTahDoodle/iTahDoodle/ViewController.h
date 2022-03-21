//
//  ViewController.h
//  iTahDoodle
//
//  Created by Aron Ruan on 2022/3/18.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic)UITableView *taskTable;
@property(nonatomic)UITextField *taskField;
@property(nonatomic)UIButton *insertButton;

@property(nonatomic)NSMutableArray *tasks;

-(void)addTask:(id)sender;

@end

