//
//  TYLauncherItem.h
//  Playground
//
//  Created by Tejaswi on 7/3/13.
//  Copyright (c) 2013 Tejaswi Yerukalapudi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TYLauncherItem : NSObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) UIImage *itemIcon;
@property (nonatomic) int notificationCount;
@property (nonatomic, strong) NSString *classNameToBeLaunched;

@end
