//
//  TYHomeViewController.m
//  Playground
//
//  Created by Teja on 6/14/13.
//  Copyright (c) 2013 Tejaswi Yerukalapudi. All rights reserved.
//

#import "TYHomeViewController.h"

@interface TYHomeViewController ()

@end

@implementation TYHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 0;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const kReuseId = @"TimelineCell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseId forIndexPath:indexPath];
    if (!cell) {
        
    }
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

}

#pragma mark - Helpers

- (CGFloat)baseCellHeight {
    return 136.0f;
}
@end
