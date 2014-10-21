//
//  ShowCell.m
//  MiniShows
//
//  Created by Maria Bernis on 21/10/14.
//  Copyright (c) 2014 mariabernis. All rights reserved.
//

#import "ShowCell.h"

@interface ShowCell ()
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;
@property (weak, nonatomic) IBOutlet UILabel *showTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *showDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ShowCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (void)updateCellForShow:(Show *)show {}

@end
