//
//  CustomView.m
//  MiniShows
//
//  Created by Alessandro on 26/10/14.
//  Copyright (c) 2014 mariabernis. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
- (void)drawRect:(CGRect)rect {
	NSMutableDictionary *views = [NSMutableDictionary dictionaryWithCapacity:4];
	[self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
		UIView *v = (UIView *)obj;
		if (v.tag != 0) {
			[views setObject:v forKey:@(v.tag)];
		}
	}];
	
	// listLayoutView.tag		= 1
	// gridLayoutView.tag		= 2
	// darkThemeView.tag		= 3
	// tintedBackgroundView.tag = 4
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// Light gray and thin line stays the same
	CGContextSetStrokeColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
	CGContextSetLineWidth(context, 0.5);
	
	// Vertical line between Layout Views (list and grid)
	CGContextMoveToPoint(context, CGRectGetWidth(self.frame) / 2,
						 ((UIView *)views[@1]).frame.origin.y * 1.05);
	CGContextAddLineToPoint(context, CGRectGetWidth(self.frame) / 2,
							((UIView *)views[@1]).frame.origin.y
							+ ((UIView *)views[@1]).frame.size.height * 0.85);
	// Horizontal lines (there's 7 of them)
	CGFloat firstX = ((UIView *)views[@3]).frame.origin.x;
	CGFloat firstY = ((UIView *)views[@1]).frame.origin.y + ((UIView *)views[@1]).frame.size.height;
	CGFloat secondX = ((UIView *)views[@4]).frame.origin.x + ((UIView *)views[@4]).frame.size.width;
	CGFloat secondY = firstY;
	CGFloat ySeparation = ((UIView *)views[@5]).frame.origin.y - ((UIView *)views[@3]).frame.origin.y;
	
	for (int i = 0; i < 7; i++) {
		CGContextMoveToPoint(context, firstX, firstY);
		CGContextAddLineToPoint(context, secondX, secondY);
		firstY += ySeparation;
		secondY = firstY;
	}
	
	CGContextDrawPath(context, kCGPathStroke);
}

@end
