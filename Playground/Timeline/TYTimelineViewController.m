//
//  TYHomeViewController.m
//  Playground
//
//  Created by Teja on 6/14/13.
//  Copyright (c) 2013 Tejaswi Yerukalapudi. All rights reserved.
//

#import "TYTimelineViewController.h"
#import "TYTimelineCell.h"

@interface TYTimelineViewController ()

@property (nonatomic, strong) IBOutlet UIButton *button;

@end

@implementation TYTimelineViewController

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
    TYTimelineCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseId forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Helpers

- (CGFloat)baseCellHeight {
    return 136.0f;
}

- (UIImage *)backgroundImage {
    return [[UIImage imageNamed:@"Timelinebar.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(1.0f, 0.0f, 1.0f, 0.0f)];
}

@end
