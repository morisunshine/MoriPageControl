//
//  NTPageControl.h
//  Eve
//
//  Created by Sheldon on 13-8-3.
//  Copyright (c) 2013年 Sheldon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoriPageControl : UIView

@property (nonatomic) NSInteger numberOfPages;
@property (nonatomic) NSInteger currentPage;
@property (nonatomic, retain) UIImageView *scrollImgView;

@end
