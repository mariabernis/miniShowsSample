#import "Shows.h"


#define key_showId       @"showId"
#define key_showTitle    @"showTitle"
#define key_showOverview @"showOverview"
#define key_showInfo     @"showInfo"
#define key_showArt      @"showArt"
#define key_showPoster   @"showPoster"
#define key_showBanner   @"showBanner"

@implementation Shows

+ (NSArray *)allShows
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 12; i++) {
        Show *s = [[Show alloc] init];
        int n = i+1;
        s.showId = n;
        s.showTitle = [NSString stringWithFormat:@"Title %d", n];
        s.showOverview = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
        s.showInfo = [NSString stringWithFormat:@"Info %d. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", n];
        s.showArt = [UIImage imageNamed:@"detail_bigbang_l.jpg"];
        s.showPoster = [UIImage imageNamed:@"detail_bigbang_p.jpg"];
        s.showBanner = [UIImage imageNamed:@"detail_bigbang_b.jpg"];
        [array addObject:s];
    }

    return [array copy];
}

@end
