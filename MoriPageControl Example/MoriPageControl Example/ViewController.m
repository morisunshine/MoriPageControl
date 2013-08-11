//
//  ViewController.m
//  MoriPageControl Example
//
//  Created by Sheldon on 13-8-10.
//  Copyright (c) 2013年 Sheldon. All rights reserved.
//

#import "ViewController.h"
#import "MoriPageControl.h"

#define RGBCOLOR(r,g,b)                     [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define APP_SCREEN_WIDTH                    [UIScreen mainScreen].bounds.size.width

@interface ViewController () <UIScrollViewDelegate>
{
    MoriPageControl *_pageControl;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *imgs = @[@"Great.jpg",@"sea.jpg",@"Great.jpg",@"sea.jpg",@"Great.jpg"];
    
    _pageControl = [[MoriPageControl alloc] initWithFrame:CGRectMake(0, 150, APP_SCREEN_WIDTH, 5)];
    _pageControl.backgroundColor = RGBCOLOR(166, 166, 166);
    _pageControl.scrollImgView.backgroundColor = RGBCOLOR(55, 177, 192);
    _pageControl.numberOfPages = 5;
    _pageControl.currentPage = 0;
    [self.view addSubview:_pageControl];
    
    self.scrollView.contentSize = CGSizeMake(APP_SCREEN_WIDTH * 5, 150);
    for (NSInteger i = 0; i < 5; i ++) {
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i * APP_SCREEN_WIDTH, 0, APP_SCREEN_WIDTH, 150)];
        imgView.image = [UIImage imageNamed:[imgs objectAtIndex:i]];
        [self.scrollView addSubview:imgView];
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView delegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger page = scrollView.contentOffset.x / APP_SCREEN_WIDTH;
    _pageControl.currentPage = page;
}

@end
