//
//  ViewController.m
//  KVO
//
//  Created by apple on 16/6/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ObserverView.h"
#import "NSObject+KVO.h"

@interface ViewController ()
//
//{
//    ObserverView *_View ;
//}
@property (strong, nonatomic) ObserverView *View1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _View1 = [[ObserverView alloc]init];
    _View1.frame = CGRectMake(100, 100, 100, 100);
    _View1.backgroundColor =[UIColor yellowColor];
    [self.view addSubview:_View1];
//

    _View1.age = 1;
//    [self.View1 addObserver:self forKeyPath:@"age" options:
//     NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
////
//    _View1.name = @"12";
//    
//    [self.View1 addObserver:self forKeyPath:@"name" options:
//     NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    
    
    
    [_View1 HZJ_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    

}



- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"age"]) {
        
        NSLog(@"is change %zd",(int)[change valueForKey:@"new"]);
        
    }
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.View1.age += 1;
    self.View1.name = @"34";
    NSLog(@"=== %zd",_View1.age);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
