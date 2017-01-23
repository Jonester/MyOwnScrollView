//
//  MyScrollView.h
//  MyOwnScrollView
//
//  Created by Chris Jones on 2017-01-23.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (strong, nonatomic) UIView *baseView;
@property (strong, nonatomic) UIView *yellowView;
@property (assign, nonatomic) CGSize contentSize;
@property (assign, nonatomic) CGFloat maxHeight;


@end
