//
//  BNRPerson.m
//  BMITime
//
//  Created by Aron Ruan on 2022/3/11.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float)heightInMeters
{
    return _heightInMeters;
}
-(void)setHeightInMeters:(float)h
{
    _heightInMeters=h;
}
-(int)WegihtInKilos
{
    return _weightInKilos;
}
-(void)setWegihtInKilos:(int)w
{
    _weightInKilos=w;
}
-(float)bodyMassIndex
{
//    return _weightInKilos/(_weightInKilos*_heightInMeters);
    float h=[self heightInMeters];
    return  [self WegihtInKilos]/(h*h);
}
-(void)addYourceselfToArray:(NSMutableArray *)theArray
{
    [theArray addObject:self];
    NSLog(@"   %@",theArray);
}

@end
