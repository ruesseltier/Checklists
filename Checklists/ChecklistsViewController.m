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

#import "ChecklistsItem.h"

@implementation ChecklistsViewController{
    NSMutableArray *items;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    items = [[NSMutableArray alloc] initWithCapacity:20];
    
    ChecklistsItem *item;
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Walk the dog";
    item.checked = NO;
    [items addObject:item];
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Brush my teeth";
    item.checked = YES;
    [items addObject:item];
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Learn iOS development";
    item.checked = YES;
    [items addObject:item];
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Soccer practice";
    item.checked = NO;
    [items addObject:item];
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Eat ice cream";
    item.checked = YES;
    [items addObject:item];
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Don't forget carrots";
    item.checked = YES;
    [items addObject:item];
    
    item = [[ChecklistsItem alloc] init];
    item.text = @"Do homework";
    item.checked = NO;
    [items addObject:item];
    
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
    return [items count];
}

- (void)configureCheckmarkForCell:(UITableViewCell* )cell withChecklistsItem:(ChecklistsItem *)item {
    
    if (item.checked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}

- (void)configureTextForCell:(UITableViewCell *)cell withChecklistsItem:(ChecklistsItem *)item {
    
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    label.text = item.text;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    
    ChecklistsItem *item = [items objectAtIndex:indexPath.row];
    
    [self configureTextForCell:cell withChecklistsItem:item];
    
    [self configureCheckmarkForCell:cell withChecklistsItem:item];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    
    ChecklistsItem *item = [items objectAtIndex: indexPath.row];
    item.checked = !item.checked;
    
    [self configureCheckmarkForCell:cell withChecklistsItem:item];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



@end
