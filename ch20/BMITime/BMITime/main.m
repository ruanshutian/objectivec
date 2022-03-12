//
//  main.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import"BNREMPloyee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        BNRPerson *mikey = [[BNREMPloyee alloc]init];
        BNREMPloyee *mikeyP = [[BNREMPloyee alloc]init];
        
        mikeyP.heightInMeters=1.8;
        mikeyP.weightInKilos=96;
        mikeyP.employeeID = 12;
        mikeyP.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];
        
        NSLog(@"%.2f",mikeyP.heightInMeters);
        NSLog(@"%ld",mikeyP.weightInKilos);
        NSLog(@"%ld",mikeyP.employeeID);
        
        float bmi = [mikeyP bodyMassIndex];
        NSLog(@"%f",bmi);
        double years = [mikeyP yearsOfEmployment];
        NSLog(@"years = %lf",years);
        
        NSDate *date=mikeyP.hireDate;
        NSLog(@"%@    %@",mikeyP,date);
        
        
    }
    return 0;
}
