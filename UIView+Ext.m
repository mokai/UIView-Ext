//
//  UIView+Ext.m
//
//
//  Created by mokai on 14-7-30.
//  Copyright (c) 2014years mokai. All rights reserved.
//


#import "UIView+Ext.h"

@implementation UIView (Ext)


- (CGPoint)origin {
    return self.frame.origin;
}


- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}


- (CGSize)size {
    return self.frame.size;
}


- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}


-(void)setLeft:(CGFloat)x{
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

-(void)setTop:(CGFloat)y{
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

-(CGFloat)left{
    return self.frame.origin.x;
}

-(CGFloat)top{
    return self.frame.origin.y;
}

- (CGFloat)right {
    return self.frame.origin.x + self.width;
}

//x+width,y+height
- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}


- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}


- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}


//width,height
-(CGFloat)width{
    return self.frame.size.width;
}

-(CGFloat)height{
    return self.frame.size.height;
}

-(void)setWidth:(CGFloat)width{
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

-(void)setHeight:(CGFloat)height{
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}


-(CGFloat)centerHorizontalWithSubView:(UIView *)subView{
    return self.width/2 - subView.width/2;
}
-(CGFloat)centerVerticalWithSubView:(UIView *)subView{
    return self.height/2 - subView.height/2;
}

-(CGPoint)centerWithSubView:(UIView *)subView{
    return CGPointMake([self centerHorizontalWithSubView:subView],[self centerVerticalWithSubView:self]);
}


-(void)addSubViewToCenter:(UIView *)subView{
    CGRect rect = subView.frame;
    rect.origin = [self centerWithSubView:subView];
    subView.frame = rect;
    [self addSubview:subView];
}

-(void)addSubViewToHorizontalCenter:(UIView *)subView{
    CGRect rect = subView.frame;
    rect.origin.x = [self centerHorizontalWithSubView:subView];
    subView.frame = rect;
    [self addSubview:subView];
}

-(void)addSubViewToVerticalCenter:(UIView *)subView{
    CGRect rect = subView.frame;
    rect.origin.y = [self centerVerticalWithSubView:subView];
    subView.frame = rect;
    [self addSubview:subView];
}



- (CGFloat)screenLeft {
    CGFloat x = 0;
    for (UIView *view = self; view; view = view.superview){
        x += view.left;
        
        if ([view isKindOfClass:[UIScrollView class]]){
            UIScrollView *scrollView = (UIScrollView*)view;
            x -= scrollView.contentOffset.x;
        }
    }
    
    return x;
}


- (CGFloat)screenTop {
    CGFloat y = 0;
    for (UIView *view = self; view; view = view.superview){
        y += view.top;
        
        if ([view isKindOfClass:[UIScrollView class]]){
            UIScrollView *scrollView = (UIScrollView*)view;
            y -= scrollView.contentOffset.y;
        }
    }
    return y - [UIApplication sharedApplication].statusBarFrame.size.height;
}


- (CGRect)screenFrame {
    return CGRectMake(self.screenLeft, self.screenTop, self.width, self.height);
}


@end
