//
//  CircleButton.m
//  MiniShows
//
//  Created by Alessandro on 26/10/14.
//  Copyright (c) 2014 mariabernis. All rights reserved.
//

#import "CircleButton.h"

@implementation CircleButton

- (void)drawRect:(CGRect)rect {
	// tintColor sets the fill color of the oval while the border color is just darker
	UIColor *borderColor;
	CGFloat h, s, b, a;
	if ([self.tintColor getHue:&h saturation:&s brightness:&b alpha:&a]){
		borderColor = [UIColor colorWithHue:h
								 saturation:s
								 brightness:b * 0.85
									  alpha:a];
	} else {
		borderColor = [UIColor blackColor];
	}
		
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGFloat spaceFromBorder = 4;
	CGRect borderRect = CGRectInset(rect, spaceFromBorder, spaceFromBorder);
	CGContextStrokeEllipseInRect(context, self.frame);
	CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
	CGContextSetFillColorWithColor(context, self.tintColor.CGColor);
	CGContextSetLineWidth(context, 1.0);
	CGContextFillEllipseInRect (context, borderRect);
	CGContextStrokeEllipseInRect(context, borderRect);
}


@end
