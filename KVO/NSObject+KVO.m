//
//  NSObject+KVO.m
//  KVO
//
//  Created by apple on 16/6/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NSObject+KVO.h"
#import "objc/runtime.h"
#import "HZJKVONotifying_ObserverView.h"
@implementation NSObject (KVO)



- (void)HZJ_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context{
    //修改isa ，改变当前对象的类名
    object_setClass(self, [HZJKVONotifying_ObserverView class]);
    
    //添加关联，把观察者保存到当前对象里面
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
