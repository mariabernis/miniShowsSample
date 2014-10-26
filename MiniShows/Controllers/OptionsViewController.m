//
//  OptionsViewController.m
//  MiniShows
//
//  Created by Alessandro on 25/10/14.
//  Copyright (c) 2014 mariabernis. All rights reserved.
//

#import "OptionsViewController.h"
#import "SevenSwitch.h"

@interface OptionsViewController ()
@property (strong, nonatomic) IBOutletCollection(SevenSwitch) NSArray *sevenSwitches;

@end

@implementation OptionsViewController

- (void)setupSwitches{
	[self.sevenSwitches enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
		SevenSwitch *s = (SevenSwitch *)obj;
		s.thumbTintColor = s.tintColor;
		s.onTintColor = [UIColor colorWithRed:0xD2 / 255.0
										green:0xD7 / 255.0
										 blue:0xD3 / 255.0
										alpha:1.0];
		s.shadowColor = [UIColor clearColor];
		s.borderColor = [UIColor colorWithRed:0x41 / 255.0
										green:0x75 / 255.0
										 blue:0x05 / 255.0
										alpha:1.0];
	}];
	
}

- (IBAction)backButtonPressed:(id)sender {
	[self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)greenButtonPressed:(id)sender {
}

- (IBAction)yellowButtonPressed:(id)sender {
}

- (IBAction)purpleButtonPressed:(id)sender {
}


- (void)viewDidLoad {
    [super viewDidLoad];
	[self setupSwitches];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
