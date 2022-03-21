//
//  ViewController.m
//  iTahDoodle
//
//  Created by Aron Ruan on 2022/3/18.
//

#import "ViewController.h"
#import "SubViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    CGRect tableFrame = CGRectMake(0, 80, self.view.bounds.size.width,self.view.bounds.size .height-100);
//
//    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
//    CGRect buttonFrame = CGRectMake(228,40, 72, 31);
//
//    self.taskTable = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
//
//    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
//
//    [self.taskTable registerClass:[UITableViewCell class]forCellReuseIdentifier:@"Cell"];
//
//    self.taskField =[[UITextField alloc]initWithFrame:fieldFrame];
//    self.taskField.borderStyle =UITextBorderStyleRoundedRect;
//    self.taskField.placeholder = @"Type a task ,tap Insert ";
//
//    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    self.insertButton.frame = buttonFrame;
//    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
//
//    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
//
//    [self.view addSubview:self.taskTable];
//    [self.view addSubview:self.taskField];
//    [self.view addSubview:self.insertButton];
}

-(void)addTask:(id)sender {
    SubViewController *subViewCtrl = [[SubViewController alloc] init];
    [self.navigationController pushViewController:subViewCtrl animated:YES];
}
- (IBAction)click:(id)sender {
    SubViewController *subViewCtrl = [[SubViewController alloc] init];
    [self.navigationController pushViewController:subViewCtrl animated:YES];
}
- (IBAction)aronClick:(id)sender {
}

- (IBAction)aronClick2:(id)sender {
}

@end
