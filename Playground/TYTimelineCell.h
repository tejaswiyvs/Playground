//
//  TYTimelineCell.h
//  Playground
//
//  Created by Tejaswi on 6/17/13.
//  Copyright (c) 2013 Tejaswi Yerukalapudi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYTimelineCell : UICollectionViewCell

@property (strong) IBOutlet UIImageView *profilePictureImgView;
@property (strong) IBOutlet UILabel *fullNameLbl;
@property (strong) IBOutlet UILabel *dateTimeLbl;
@property (strong) IBOutlet UILabel *statusText;

@end
