//
//  ChecklistsItem.h
//  Checklists
//
//  Created by Rene Kurfürst on 12.02.13.
//  Copyright (c) 2013 Rene Kurfürst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistsItem : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) BOOL checked;

- (void)toggleChecked;

@end
