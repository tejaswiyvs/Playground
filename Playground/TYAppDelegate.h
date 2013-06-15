//
//  TYAppDelegate.h
//  Playground
//
//  Created by Teja on 6/14/13.
//  Copyright (c) 2013 Tejaswi Yerukalapudi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
