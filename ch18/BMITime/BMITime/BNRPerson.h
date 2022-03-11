//
//  BNRPerson.h
//  BMITime
//
//  Created by Aron Ruan on 2022/3/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject
{
    float _heightInMeters;
    int _weightInKilos;
}

-(float)heightInMeters;
-(void)setHeightInMeters:(float)h;
-(int)WegihtInKilos;
-(void)setWegihtInKilos:(int)w;

-(float)bodyMassIndex;

-(void)addYourceselfToArray:(NSMutableArray *)theArray;

@end

NS_ASSUME_NONNULL_END
