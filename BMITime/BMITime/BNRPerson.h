//
//  BNRPerson.h
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject
@property(nonatomic)CGFloat heightInMeters;
@property(nonatomic)NSInteger weightInKilos;

-(float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
