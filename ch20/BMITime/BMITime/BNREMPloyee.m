//
//  BNREMPloyee.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import "BNREMPloyee.h"

@implementation BNREMPloyee
-(double) yearsOfEmployment
{
    if(self.hireDate)
    {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs/31557600.0;
    }else{
        return 0;
    }
}

//覆盖
-(float)bodyMassIndex
{
//    return 19.0;
    //使用父类的结果用super
    return [super bodyMassIndex]*0.9;
    
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"<Employee %ld",self.employeeID];
}

@end
