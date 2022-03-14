//
//  BNRPerson.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/12.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float)bodyMassIndex
{
    return _weightInKilos/(_heightInMeters*_heightInMeters);
}

@end
