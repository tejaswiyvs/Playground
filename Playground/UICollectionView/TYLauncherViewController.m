//
//  TYCollectionViewController.m
//  Playground
//
//  Created by Tejaswi on 7/2/13.
//  Copyright (c) 2013 Tejaswi Yerukalapudi. All rights reserved.
//

#import "TYLauncherViewController.h"
#import "TYLauncherCell.h"
#import "TYLauncherItem.h"

@interface TYLauncherViewController ()

@property (nonatomic, strong) NSArray *launcherItems;

@end

@implementation TYLauncherViewController

static NSString * const kLauncherCellReuseId = @"LauncherCell";

- (id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout {
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    [self setTitle:@"Launcher"];
    [self configureCollectionViewCell];
    [self populateItems];
}

#pragma mark - UICollectionView

- (void)configureCollectionViewCell {
    [self.collectionView registerNib:[UINib nibWithNibName:@"TYLauncherCell" bundle:nil]
          forCellWithReuseIdentifier:kLauncherCellReuseId];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TYLauncherCell *cell = (TYLauncherCell *) [collectionView dequeueReusableCellWithReuseIdentifier:kLauncherCellReuseId
                                                                                        forIndexPath:indexPath];
    TYLauncherItem *item = [self.launcherItems objectAtIndex:indexPath.row];
    [cell.textLbl setText:item.itemName];
    [cell.iconImgView setImage:item.itemIcon];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.launcherItems count];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Helpers

- (void)populateItems {
    TYLauncherItem *item1 = [[TYLauncherItem alloc] init];
    item1.itemName = @"Timeline";
    item1.itemIcon = [UIImage imageNamed:@"timeline"];
    item1.classNameToBeLaunched = @"TYTimelineViewController";
    
    TYLauncherItem *item2 = [[TYLauncherItem alloc] init];
    item2.itemName = @"Custom Views";
    item2.itemIcon = [UIImage imageNamed:@"custom-views"];
    item2.classNameToBeLaunched = @"";
    
    TYLauncherItem *item3 = [[TYLauncherItem alloc] init];
    item3.itemName = @"Autolayout";
    item3.itemIcon = [UIImage imageNamed:@"autolayout"];
    item3.classNameToBeLaunched = @"x";
    
    TYLauncherItem *item4 = [[TYLauncherItem alloc] init];
    item4.itemName = @"CoreData";
    item4.itemIcon = [UIImage imageNamed:@"core-data"];
    item4.classNameToBeLaunched = @"";
    
    TYLauncherItem *item5 = [[TYLauncherItem alloc] init];
    item5.itemName = @"UIScrollView";
    item5.itemIcon = [UIImage imageNamed:@"scrollview"];
    item5.classNameToBeLaunched = @"";
    
    TYLauncherItem *item6 = [[TYLauncherItem alloc] init];
    item6.itemName = @"UICollectionView";
    item6.itemIcon = [UIImage imageNamed:@"collection-view"];
    item6.classNameToBeLaunched = @"";
    
    self.launcherItems = @[item1, item2, item3, item4, item5, item6];
}

@end
