//
//  BNREMPloyee.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee()
{
    NSMutableSet *_assets;
}
@property(nonatomic)NSUInteger officelarmCode;
@end

@implementation BNREmployee

//属性
-(void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}
-(NSArray *)assets
{
    return [_assets mutableCopy];
}
-(void)addAsset:(BNRAsset *)a
{
    if(!_assets)
    {
        _assets = [[NSMutableSet alloc]init];
    }
    [_assets addObject:a];
    a.holder = self;
}

-(NSInteger)valueOfAssets
{
    NSInteger sum=0;
    for(BNRAsset *a in _assets)
    {
        sum+=[a resaleValue];
    }
    return  sum;
}

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
//    return [NSString stringWithFormat:@"<Employee %ld",self.employeeID];
    return [NSString stringWithFormat:@"Employee %ld : $ %ld in assets>",self.employeeID,self.valueOfAssets];
}

-(void)dealloc
{
    NSLog(@"BNREmployee deallocing %@",self);
}

@end
