//
//  ReadMemory.h
//  ReadiOSMemory
//
//  Created by 韩卫星 on 2021/4/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReadMemory : NSObject

+ (u_long)getUsedMemory;

+ (u_long)getFreeMemory;

@end

NS_ASSUME_NONNULL_END
