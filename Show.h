//
//  Show.h
//  MiniShows
//
//  Created by Alessandro on 22/10/14.
//  Copyright (c) 2014 mariabernis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Show : NSObject

@property (nonatomic) NSInteger showId;
@property (nonatomic, strong) NSString *showTitle;
@property (nonatomic, strong) NSString *showOverview;
@property (nonatomic, strong) NSString *showInfo;
@property (nonatomic, strong) UIImage *showArt;
@property (nonatomic, strong) UIImage *showBanner;
@property (nonatomic, strong) UIImage *showPoster;


@end
