//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Aron Ruan on 2022/3/21.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNROwnedAppliance : BNRAppliance
@property(readonly)NSSet * ownerNames;

-(instancetype)initWithProductName:(NSString *)pn
                    firstOwnerName:(NSString *)n;
-(void)addOwnerName:(NSString *)n;
-(void)removeOwnerName:(NSString *)n;

@end

NS_ASSUME_NONNULL_END
