//
//  NTPageControl.h
//  Eve
//
//  Created by Sheldon on 13-8-3.
//  Copyright (c) 2013年 Gezbox. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NTPageControl : UIView

@property (nonatomic) NSInteger numberOfPages;
@property (nonatomic) NSInteger currentPage;
@property (nonatomic, retain) UIImageView *scrollImgView;

@end
