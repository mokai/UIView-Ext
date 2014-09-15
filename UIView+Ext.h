//
//  UIView+Ext.h
//
//
//  Created by mokai on 14-7-30.
//  Copyright (c) 2014years mokai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Ext)


#pragma mark location
- (CGPoint)origin;//return self.frame.origin
- (void)setOrigin:(CGPoint)origin;
- (CGSize)size;
- (void)setSize:(CGSize)size;

#pragma mark width and height
-(CGFloat)width;////return self.frame.size.width
-(CGFloat)height;
-(void)setWidth:(CGFloat)width;
-(void)setHeight:(CGFloat)height;

#pragma mark top and left
-(CGFloat)top;//return self.frame.origin.y
-(CGFloat)left;
-(void)setTop:(CGFloat)x;
-(void)setLeft:(CGFloat)y;

#pragma mark bottom and right
-(CGFloat)bottom;//return self.top+self.height
-(void)setBottom:(CGFloat)buttom;
-(CGFloat)right;
-(void)setRight:(CGFloat)right;//return self.left+self.width


#pragma mark view center
-(CGFloat)centerHorizontalWithSubView:(UIView *)subView;//According to the width of the View to calculate the horizontal center starting point in the self
-(CGFloat)centerVerticalWithSubView:(UIView *)subView;
-(CGPoint)centerWithSubView:(UIView *)subView;

#pragma mark add view to center
-(void)addSubViewToCenter:(UIView *)subView;//Increase the View to the center of the self
-(void)addSubViewToHorizontalCenter:(UIView *)subView;
-(void)addSubViewToVerticalCenter:(UIView *)subView;

#pragma mark The distance from the starting point of the screen
- (CGFloat)screenTop;
- (CGFloat)screenLeft;
- (CGRect)screenFrame;
@end
