//
//  BNRAsset.h
//  BMITime
//
//  Created by Aron Ruan on 2022/3/14.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property(nonatomic,copy)NSString *label;
@property(nonatomic)NSInteger resaleValue;

@property(nonatomic) BNREmployee *holder;


@end

NS_ASSUME_NONNULL_END
