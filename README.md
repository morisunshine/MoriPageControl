MoriPageControl
===============

MoriPageControl is fully customizable Page Control for iOS
##Usage
```
//Initialization of the page control
MoriPageControl *pageControl = [[MoriPageControl alloc] initWithFrame:CGRectMake(0, 150, APP_SCREEN_WIDTH, 5)];
//Setting the backgroundcolor
pageControl.backgroundColor = RGBCOLOR(166, 166, 166);
//Setting the color of scrollImgView
pageControl.scrollImgView.backgroundColor = RGBCOLOR(55, 177, 192);
//setting the number of pages
pageControl.numberOfPages = 5;
//setting the current of page
pageControl.currentPage = 0;
[self.view addSubview:pageControl];

```

Check the example project for further details

##Requirements
- iOS >= 4.3
- ARC

##Contact

Morisunshine

- https://twitter.com/morisunshine
- https://github.com/morisunshine

