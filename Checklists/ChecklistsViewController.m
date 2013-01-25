//
//  ChecklistsViewController.m
//  Checklists
//
//  Created by Rene Kurfürst on 16.01.13.
//  Copyright (c) 2013 Rene Kurfürst. All rights reserved.
//

#import "ChecklistsViewController.h"

@interface ChecklistsViewController ()

@end

@implementation ChecklistsViewController{
    NSString *row0text;
    NSString *row1text;
    NSString *row2text;
    NSString *row3text;
    NSString *row4text;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    row0text = @"Walk the dog";
    row1text = @"Brush teeth";
    row2text = @"Lean iOS development";
    row3text = @"Soccer practice";
    row4text = @"Eat ice cream";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)InterfaceOrientation
{
    return (InterfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    
    if (indexPath.row == 0) {
        label.text = row0text;
    } else if (indexPath.row == 1) {
        label.text = row1text;
    } else if (indexPath.row == 2) {
        label.text = row2text;
    } else if (indexPath.row == 3) {
        label.text = row3text;
    } else if (indexPath.row == 4) {
        label.text = row4text;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (cell.accessoryType == UITableViewCellAccessoryNone) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
