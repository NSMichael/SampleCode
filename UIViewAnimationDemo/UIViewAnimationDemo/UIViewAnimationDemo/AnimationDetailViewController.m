//
//  AnimationDetailViewController.m
//  UIViewAnimationDemo
//
//  Created by 耿功发 on 2016/10/21.
//  Copyright © 2016年 9tong. All rights reserved.
//

#import "AnimationDetailViewController.h"

@interface AnimationDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation AnimationDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setImage];
}

-(void)setImage{
    
    [self.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"tom%i",self.type+1]]];
    [self.imageView setBackgroundColor:[UIColor greenColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnClicked:(id)sender {
    if (self.type == 0) {
        [self changeFrame];
    } else if (self.type == 1) {
        [self changeBounds];
    } else if (self.type == 2) {
        [self changeCenter];
    } else if (self.type == 3) {
        [self transform];
    } else if (self.type == 4) {
        [self alpha];
    } else if (self.type == 5) {
        [self changeBackground];
    } else if (self.type == 6) {
        [self springAnimation];
    } else if (self.type == 7) {
        [self transitionAnimation];
    }
}

// 1.大小变化
- (void)changeFrame {
    
    CGRect originalRect = self.imageView.frame;
    CGRect rect = CGRectMake(self.imageView.frame.origin.x-20, self.imageView.frame.origin.y-120, 160, 80);
    
    [UIView animateWithDuration:1 animations:^{
        self.imageView.frame = rect;
    } completion:^(BOOL finished) {
       [UIView animateWithDuration:1 animations:^{
           self.imageView.frame = originalRect;
       }];
    }];
}

// 2.拉伸变化
- (void)changeBounds {
    
    CGRect originalBounds = self.imageView.bounds;
    CGRect rect = CGRectMake(0, 0, 300, 120);
    
    [UIView animateWithDuration:1 animations:^{
        self.imageView.bounds = rect;
    } completion:^(BOOL finished) {
       [UIView animateWithDuration:1 animations:^{
           self.imageView.bounds = originalBounds;
       }];
    }];
}

// 3.中心位置
- (void)changeCenter {
    CGPoint originalPoint = self.imageView.center;
    CGPoint point = CGPointMake(self.imageView.center.x, self.imageView.center.y-170);
    
    [UIView animateWithDuration:1 animations:^{
        self.imageView.center = point;
    } completion:^(BOOL finished) {
       [UIView animateWithDuration:1 animations:^{
           self.imageView.center = originalPoint;
       }];
    }];
}

// 4.旋转等
- (void)transform {
    
    CGAffineTransform originalTrnasform = self.imageView.transform;
    
    [UIView animateWithDuration:1 animations:^{
        
        // 缩放
        // self.imageView.transform = CGAffineTransformMakeScale(0.6, 0.6);
        
        // 平移
        // self.imageView.transform = CGAffineTransformMakeTranslation(60, -60);
        
        // 旋转
        self.imageView.transform = CGAffineTransformMakeRotation(4.0);
        
    } completion:^(BOOL finished) {
       [UIView animateWithDuration:1 animations:^{
           self.imageView.transform = originalTrnasform;
       }];
    }];
}

// 5.透明度
- (void)alpha {
    
    [UIView animateWithDuration:1 animations:^{
        self.imageView.alpha = 0.2;
    } completion:^(BOOL finished) {
       [UIView animateWithDuration:1 animations:^{
           self.imageView.alpha = 1;
       }];
    }];
}

// 6.背景颜色
- (void)changeBackground {
    
    [UIView animateKeyframesWithDuration:9.0 delay:0.f options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:1.0 / 4 animations:^{
            self.imageView.backgroundColor = [UIColor colorWithRed:0.9475 green:0.1921 blue:0.1746 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:1.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.imageView.backgroundColor = [UIColor colorWithRed:0.1064 green:0.6052 blue:0.0334 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:2.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.imageView.backgroundColor = [UIColor colorWithRed:0.1366 green:0.3017 blue:0.8411 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:3.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.imageView.backgroundColor = [UIColor colorWithRed:0.619 green:0.037 blue:0.6719 alpha:1.0];
        }];
        [UIView addKeyframeWithRelativeStartTime:3.0 / 4 relativeDuration:1.0 / 4 animations:^{
            self.imageView.backgroundColor = [UIColor whiteColor];
        }];
    } completion:^(BOOL finished) {
        NSLog(@"动画结束");
    }];

}

// 7.Spring动画
- (void)springAnimation {
    
    CGRect originalRect = self.imageView.frame;
    CGRect rect = CGRectMake(self.imageView.frame.origin.x - 80, self.imageView.frame.origin.y, 120, 120);
    
    [UIView animateWithDuration:0.4 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:4 options:UIViewAnimationOptionCurveLinear animations:^{
        
        self.imageView.frame = rect;
        
    } completion:^(BOOL finished) {
       
        [UIView animateWithDuration:1 delay:1 usingSpringWithDamping:0.5 initialSpringVelocity:4 options:UIViewAnimationOptionCurveLinear animations:^{
            
            self.imageView.frame = originalRect;
            
        } completion:^(BOOL finished) {
            
        }];
    }];
}

// 8.转场动画
-(void)transitionAnimation {
    
    [UIView transitionWithView:self.imageView duration:2.0 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        
    } completion:^(BOOL finished) {
       
        [UIView transitionWithView:self.imageView duration:2.0 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
            
        } completion:^(BOOL finished) {
            
        }];
    }];
}


@end
