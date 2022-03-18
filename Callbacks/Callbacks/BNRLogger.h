//
//  BNRLogger.h
//  Callbacks
//
//  Created by Aron Ruan on 2022/3/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject
@property (nonatomic)NSDate *lastTime;
-(NSString *)lastTimeString;
-(void)updateLastTime:(NSTimer *)t;

@end

NS_ASSUME_NONNULL_END
