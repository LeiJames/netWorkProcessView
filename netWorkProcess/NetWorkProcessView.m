//
//  NetWorkProcessView.m
//  netWorkProcess
//
//  Created by giga on 2017/10/9.
//  Copyright © 2017年 深圳市齐家互联网科技有限公司. All rights reserved.
//

#import "NetWorkProcessView.h"

@interface NetWorkProcessView ()

@property(nonatomic, strong)CABasicAnimation *rotationAnimation;

@end


@implementation NetWorkProcessView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef contex = UIGraphicsGetCurrentContext();//获取上下文
    
    CGContextAddArc(contex, rect.size.height/2, rect.size.height/2, rect.size.height/2 - 10, 0, M_PI/4, YES);
    
    CGContextSetLineWidth(contex, 3);

    [[UIColor orangeColor]setStroke];
    
    CGContextDrawPath(contex, kCGPathStroke);
    
    
    
}


- (void)start
{
    _rotationAnimation = [CABasicAnimation animation];
    _rotationAnimation.fromValue = @(0);
    _rotationAnimation.toValue = @(M_PI * 2);
    _rotationAnimation.keyPath = @"transform.rotation.z";
    _rotationAnimation.removedOnCompletion = NO;
    _rotationAnimation.repeatCount = CGFLOAT_MAX;
    //    rotationAnimation.repeatDuration = 0.5;
    _rotationAnimation.fillMode = @"forwards";
    _rotationAnimation.duration = 0.5f;
    //    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [self.layer addAnimation:_rotationAnimation forKey:@"rotation"];
    
}

- (void)stop
{
    [self.layer removeAnimationForKey:@"rotation"];
    _rotationAnimation = nil;
//    self.hidden = YES;
}


@end
