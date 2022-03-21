//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Aron Ruan on 2022/3/21.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance()
{
    NSMutableSet *_ownerNames;
}

@end

@implementation BNROwnedAppliance

-(instancetype)initWithProductName:(NSString *)pn firstOwnerName:(nonnull NSString *)n
{
    if(self=[super initWithProductName:pn])
    {
        _ownerNames =[[NSMutableSet alloc]init];
        if(n)
        {
            [_ownerNames addObject:n];
        }
    }
    return self;
}

-(void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

-(void)removeOwnerName:(NSSet *)n
{
    [_ownerNames removeObject:n];
}

-(NSSet *)ownerNames
{
    return [_ownerNames copy];
}

-(instancetype)init
{
    [NSException raise:@"BNR" format:@"Use ...:not init"];
    return @"init fail";
}

//-(instancetype)init
//{
//    return @"init fail";
//}

@end
