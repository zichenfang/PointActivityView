//
//  PointActivityView.m
//  testForGame
//
//  Created by iCocoder on 14-9-9.
//  Copyright (c) 2014年 24so. All rights reserved.
//

#import "PointActivityView.h"
@interface PointActivityView ()


@end
@implementation PointActivityView

- (id)init
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"PointActivityView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        // Initialization code
        self.pointLabel_0.layer.cornerRadius =self.pointLabel_0.frame.size.width*0.5;
        [self addAnimationOnView:self.pointLabel_0 Delay:0];

        self.pointLabel_1.layer.cornerRadius =self.pointLabel_0.frame.size.width*0.5;
        [self addAnimationOnView:self.pointLabel_1 Delay:0.3];

        self.pointLabel_2.layer.cornerRadius =self.pointLabel_0.frame.size.width*0.5;
        [self addAnimationOnView:self.pointLabel_2 Delay:0.6];
        
    }
    return self;
}
- (void)addAnimationOnView :(UIView *)aView Delay :(float)delay
{
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.repeatCount = MAXFLOAT;
    animation.removedOnCompletion = YES;
    animation.autoreverses = NO;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];

    animation.fromValue=[NSNumber numberWithFloat:1];//起始状态动画
    animation.toValue=[NSNumber numberWithFloat:0.2];
    animation.duration = 1.3;
    animation.beginTime = CACurrentMediaTime() + delay;
    [aView.layer addAnimation:animation forKey:@"pointAni"];//添加动画

}
- (void)stopAnimating
{
    [self.pointLabel_0.layer removeAllAnimations];
    self.pointLabel_0.alpha =0;
    [self.pointLabel_1.layer removeAllAnimations];
    self.pointLabel_1.alpha =0;

    [self.pointLabel_2.layer removeAllAnimations];
    self.pointLabel_2.alpha =0;

    

}
- (void)startAnimating
{
    [self stopAnimating];
    [self addAnimationOnView:self.pointLabel_0 Delay:0];
    [self addAnimationOnView:self.pointLabel_1 Delay:0.3];
    [self addAnimationOnView:self.pointLabel_2 Delay:0.6];
}
@end
