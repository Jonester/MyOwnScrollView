//
//  MyScrollView.m
//  MyOwnScrollView
//
//  Created by Chris Jones on 2017-01-23.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    self.baseView = [[UIView alloc]initWithFrame:self.frame];
    self.baseView.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *redVeiw = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redVeiw.backgroundColor = [UIColor redColor];
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    self.yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    
    [self addSubview:self.baseView];
    [self.baseView addSubview:redVeiw];
    [self.baseView addSubview:greenView];
    [self.baseView addSubview:blueView];
    [self.baseView addSubview:self.yellowView];
    
    self.maxHeight = self.bounds.size.height + self.yellowView.bounds.size.height + (self.yellowView.frame.origin.y - self.bounds.size.height);
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(viewPanned:)];
    [self addGestureRecognizer:panGesture];
    
    self.contentSize = CGSizeMake(self.bounds.size.width, self.maxHeight);
    
    return self;
}

-(void)viewPanned:(UIPanGestureRecognizer*)sender {
   
    CGPoint point = [sender translationInView:self];
    float maxScrollHeight =  (self.maxHeight - self.frame.size.height) * - 1;
    CGFloat newYPoint =  self.bounds.origin.y + point.y;
    
    if ((newYPoint > maxScrollHeight) && (newYPoint <= 0) ) {
        CGRect newRect = CGRectMake(self.frame.origin.x, newYPoint, self.frame.size.width, self.frame.size.height);
        self.frame = newRect;
    }
}

@end
