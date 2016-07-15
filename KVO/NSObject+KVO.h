//
//  NSObject+KVO.h
//  KVO
//
//  Created by apple on 16/6/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface NSObject (KVO)
- (void)HZJ_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
@end
