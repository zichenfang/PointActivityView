//
//  PointActivityView.h
//  testForGame
//
//  Created by iCocoder on 14-9-9.
//  Copyright (c) 2014年 24so. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PointActivityView : UIView
@property(nonatomic,strong) IBOutlet UILabel *pointLabel_0;
@property(nonatomic,strong) IBOutlet UILabel *pointLabel_1;
@property(nonatomic,strong) IBOutlet UILabel *pointLabel_2;

- (void)stopAnimating;
- (void)startAnimating;
@end
