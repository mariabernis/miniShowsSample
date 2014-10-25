
#import "ShowCell.h"

@interface ShowCell ()
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;
@property (weak, nonatomic) IBOutlet UILabel *showTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *showDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ShowCell

- (void)setShow:(Show *)aShow
{
    if (!aShow) {
        return;
    }
    _show = aShow;
    
    self.showTitleLabel.text = self.show.showTitle;
    self.showDetailLabel.text = self.show.showInfo;
    NSString *status = nil;
    UIColor *statusColor = nil;
    if (self.show.pendingWatch > 0) {
        status = [NSString stringWithFormat:@"%ld behind", (long)self.show.pendingWatch];
        statusColor = [UIColor redColor];
    } else {
        status = [NSString stringWithFormat:@"Up to date"];
        statusColor = [UIColor lightGrayColor];
    }
    self.statusLabel.text = status;
    self.statusLabel.textColor = statusColor;
    self.showImageView.image = self.show.showPoster;
    
}


@end
