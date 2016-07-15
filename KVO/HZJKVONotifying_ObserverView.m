//
//  NSKVONotifying_ObserverView.m
//  KVO
//
//  Created by apple on 16/6/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HZJKVONotifying_ObserverView.h"
#import "objc/runtime.h"

@implementation HZJKVONotifying_ObserverView

- (void)setAge:(int)age {
    
    [super setAge:age];
    
    //取出观察者，并通知观察者属性改变
    id observer = objc_getAssociatedObject(self, @"observer");
    
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
    
}

@end
