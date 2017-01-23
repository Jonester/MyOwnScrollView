//
//  ViewController.m
//  MyOwnScrollView
//
//  Created by Chris Jones on 2017-01-23.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (strong, nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView = [[MyScrollView alloc]initWithFrame:self.view.frame];
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width, self.scrollView.maxHeight);
    
    [self.view addSubview:self.scrollView];
    
}

//-(void)viewDidAppear:(BOOL)animated {
//    
////    CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 100, self.view.bounds.size.width, self.view.bounds.size.height);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
