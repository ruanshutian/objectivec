//
//  BNRAppliance.h
//  Appliances
//
//  Created by Aron Ruan on 2022/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject

@property(nonatomic)NSString *productName;
@property(nonatomic)NSInteger voltage;

-(instancetype)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
