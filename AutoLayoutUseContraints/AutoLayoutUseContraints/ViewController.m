//
//  ViewController.m
//  AutoLayoutUseContraints
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test2];
}

/**
 *  两个视图的相互约束
 */
-(void)test2{
    UIView* blueView=[[UIView alloc]init];
    blueView.backgroundColor=[UIColor blueColor];
    //关闭自动布局
    blueView.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:blueView];
    
    UIView* redView=[[UIView alloc]init];
    redView.backgroundColor=[UIColor redColor];
    //关闭自动布局
    redView.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:redView];
    //设置blueView的左边距
    NSLayoutConstraint* leftCon=[NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0];
    [self.view addConstraint:leftCon];
    //设置blueView右边距
    NSLayoutConstraint* rightCon=[NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-20.0];
    [self.view addConstraint:rightCon];
    //设置blueView的上边距
    NSLayoutConstraint* topCon=[NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:
                                NSLayoutAttributeTop multiplier:1.0 constant:20.0];
    [self.view addConstraint:topCon];
    //设置blueView的高度约束
    NSLayoutConstraint* heightCon=[NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.0 constant:50];
    [blueView addConstraint:heightCon];
    //设置redView的上边距
    NSLayoutConstraint* redHightCon=[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20];
    [self.view addConstraint:redHightCon];
    //设置redView的左边距
    NSLayoutConstraint* redWidthCon=[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    [self.view addConstraint:redWidthCon];
    //设置redView的右边距
    NSLayoutConstraint* redRightCon=[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    [self.view addConstraint:redRightCon];
    //设置redView的高度约束
    NSLayoutConstraint* redHeightCon=[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.0 constant:50];
    [redView addConstraint:redHeightCon];
}

/**
 *  一个视图的自动布局
 */
-(void)test1{
    UIView* view=[[UIView alloc]init];
    view.backgroundColor=[UIColor blueColor];
    //关闭自动布局
    view.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:view];
    //右边距约束
    NSLayoutConstraint* constraint1=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-20];
    [self.view addConstraint:constraint1];
    //上边距约束
    NSLayoutConstraint* constraint2=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:
        NSLayoutAttributeTop multiplier:1.0 constant:20];
    [self.view addConstraint:constraint2];
    //宽度约束
    NSLayoutConstraint* constraint3=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.0 constant:60];
    [view addConstraint:constraint3];
    //高度约束
    NSLayoutConstraint* constraint4=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.0 constant:60];
    [view addConstraint:constraint4];
}
@end
