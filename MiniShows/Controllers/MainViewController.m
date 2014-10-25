

#import "MainViewController.h"
#import "Shows.h"
#import "ShowCell.h"

@interface MainViewController ()
@property (nonatomic, strong) NSArray *data;
@end

@implementation MainViewController

- (NSArray *)data
{
    if (!_data) {
        _data = [Shows allShows];
    }
    return _data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShowCell *cell = (ShowCell *)[tableView dequeueReusableCellWithIdentifier:@"ShowCell"];
    
    Show *show = [self.data objectAtIndex:indexPath.row];
    cell.show = show;
    
    return cell;
}

@end
