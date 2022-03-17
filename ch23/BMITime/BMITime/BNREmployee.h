//
//  BNREMPloyee.h
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import"BNRPerson.h"
#import"BNRAsset.h"
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson//BNREMPloyee 是 BNRPerson 子类
{
    NSMutableArray *_assets;
}
@property(nonatomic)NSInteger employeeID;
@property(nonatomic)NSInteger officeAlarmCode;
@property(nonatomic)NSDate *hireDate;
@property(nonatomic,copy)NSArray *assets;


-(double)yearsOfEmployment;
-(void)addAsset:(BNRAsset *)a;
-(NSInteger)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
