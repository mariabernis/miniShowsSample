//
//  Show.m
//  MiniShows
//
//  Created by Alessandro on 22/10/14.
//  Copyright (c) 2014 mariabernis. All rights reserved.
//

#import "Show.h"

static const int DEFAULT_SHOW_ID = 80379;

@implementation Show

- (instancetype)init {
	return [self initWithShowId:DEFAULT_SHOW_ID];
}

- (instancetype)initWithShowId:(NSInteger)theId {

	if (self = [super init]) {
		_showId = theId;
		_showTitle = @"The Big Bang Theory";
		_showOverview = @"Bla blah blah overview";
		_showInfo = @"Season 9 Episode 4";
		_showArt = [UIImage imageNamed:@"detail_bigbang_l"];
		_showPoster = [UIImage imageNamed:@"detail_bigbang_p"];
		_showBanner = [UIImage imageNamed:@"detail_bigbang_b"];		
	}
	return self;
}

@end
