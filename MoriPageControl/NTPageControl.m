//
//  NTPageControl.m
//  Eve
//
//  Created by Sheldon on 13-8-3.
//  Copyright (c) 2013年 Gezbox. All rights reserved.
//

#import "NTPageControl.h"

@implementation NTPageControl

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.numberOfPages = 1;
        self.currentPage = 0;
        self.scrollImgView.size = CGSizeMake(frame.size.width / self.numberOfPages, frame.size.height);
    }
    return self;
}

- (UIImageView *)scrollImgView
{
    if (!_scrollImgView) {
        _scrollImgView = [[UIImageView alloc] init];
        [self addSubview:_scrollImgView];
    }
    
    return _scrollImgView;
}

- (void)setCurrentPage:(NSInteger)currentPage
{
    _currentPage = currentPage;
    [UIView animateWithDuration:0.2 animations:^{
        CGFloat x = self.frame.size.width * currentPage / self.numberOfPages;
        self.scrollImgView.origin = CGPointMake(x, self.scrollImgView.origin.y);
    }];
}

- (void)setNumberOfPages:(NSInteger)numberOfPages
{
    _numberOfPages = numberOfPages;
    CGFloat width = self.frame.size.width / numberOfPages;
    self.scrollImgView.size = CGSizeMake(width, self.frame.size.height);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
