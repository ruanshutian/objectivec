//
//  main.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/14.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSMutableArray *employees = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        for(int i=0;i<10;i++)
        {
            BNREmployee *mikey =[[BNREmployee alloc]init];
            
            mikey.weightInKilos = 90+i;
            mikey.heightInMeters = 1.8-i/10.0;
            mikey.employeeID = i;
            
            [employees addObject:mikey];
            
            if(i==0){
                [executives setObject:mikey forKey:@"CEO"];
            }
            if(i==1){
                [executives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets=[[NSMutableArray alloc]init];
        
        for(int i=0; i<10;i++)
        {
            BNRAsset *asset = [[BNRAsset alloc]init];
            
            NSString *currentLabel =[NSString stringWithFormat:@"Laptop %d",i];
            asset.label = currentLabel;
            asset.resaleValue = 350+i*17;
            
            NSUInteger randmIndex = random() % [employees count];
            
            BNREmployee * randomEmmployee = [employees objectAtIndex:randmIndex];
            
            [randomEmmployee addAsset:asset];
            
            [allAssets addObject:asset];
            
        }
        
//        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
//        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
//        [employees sortUsingDescriptors:@[voa,eid]];
//
//         NSLog(@"Employees: %@",employees);
//
//        NSLog(@"executives : %@",executives);
//
//        NSLog(@"CEO :%@",executives[@"CEO"]);
//
//        executives =nil;
        
        NSPredicate *pradicte = [NSPredicate predicateWithFormat:@"holder.valueOfAssets >578 "];
        NSArray *toBeReclaimed =[allAssets filteredArrayUsingPredicate:pradicte];
        NSLog(@"toBeReclaimed : %@ ",toBeReclaimed);
        toBeReclaimed=nil;
        NSLog(@"----");
//        NSLog(@"Employees : %@ ",employees);
//
//        NSLog(@"Giving up ownweship of one employee");
//
//        [employees removeObjectAtIndex:5];
//
//        NSLog(@"allAssets = %@",allAssets);
//
//        NSLog(@"Giving up ownership of arrays");
//
//        employees = nil;
        
        
        
        
        
        
    }
    
//    sleep(100);
    
    return 0;
}
