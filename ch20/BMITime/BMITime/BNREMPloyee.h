//
//  BNREMPloyee.h
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>
#import"BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNREMPloyee : BNRPerson//BNREMPloyee 是 BNRPerson 子类

@property(nonatomic)NSInteger employeeID;
@property(nonatomic)NSInteger officeAlarmCode;
@property(nonatomic)NSDate *hireDate;

-(double)yearsOfEmployment;

@end

NS_ASSUME_NONNULL_END
