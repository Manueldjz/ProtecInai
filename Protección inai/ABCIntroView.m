//
//  IntroView.m
//  DrawPad
//
//  Created by Adam Cooper on 2/4/15.
//  Copyright (c) 2015 Adam Cooper. All rights reserved.
//

#import "ABCIntroView.h"
#import <QuartzCore/QuartzCore.h>

@interface ABCIntroView () <UIScrollViewDelegate>
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIPageControl *pageControl;
@property (strong, nonatomic) UIButton *doneButton;

@property (strong, nonatomic) UIView *viewOne;
@property (strong, nonatomic) UIView *viewTwo;
@property (strong, nonatomic) UIView *viewThree;
@property (strong, nonatomic) UIView *viewFour;
@property (strong, nonatomic) UIView *viewFive;
@property (strong, nonatomic) UIView *viewSix;


@end

@implementation ABCIntroView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:self.frame];
        backgroundImageView.image = [UIImage imageNamed:@"Intro_Screen_Background"];
        [self addSubview:backgroundImageView];
        
        [self addSubview:self.scrollView];
        [self addSubview:self.pageControl];
        
        [self.scrollView addSubview:self.viewOne];
        [self.scrollView addSubview:self.viewTwo];
        [self.scrollView addSubview:self.viewThree];
        [self.scrollView addSubview:self.viewFour];
        
        [self.scrollView addSubview:self.viewFive];
        
        [self.scrollView addSubview:self.viewSix];
        
        
        //Done Button
        [self addSubview:self.doneButton];
        
        
    }
    return self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGFloat pageWidth = CGRectGetWidth(self.bounds);
    CGFloat pageFraction = self.scrollView.contentOffset.x / pageWidth;
    self.pageControl.currentPage = roundf(pageFraction);
    
}

-(UIView *)viewOne {
    if (!_viewOne) {
        
        _viewOne = [[UIView alloc] initWithFrame:self.frame];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(800, self.frame.size.height*.05, self.frame.size.width*.8, 60)];
        titleLabel.center = CGPointMake(self.center.x, self.frame.size.height*.1);
        //titleLabel.text = [NSString stringWithFormat:@"¡Proteccion de datos!"];
        titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:40.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment =  NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        [_viewOne addSubview:titleLabel];
        
        
        
        
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.21, (self.frame.size.height*.01) - 35, self.frame.size.width*.59, self.frame.size.width)];
        
        //UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.1, self.frame.size.width*.8, self.frame.size.width)];
        
        //UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.34, self.frame.size.height*.12, self.frame.size.width*.33, self.frame.size.width)];
        
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.image = [UIImage imageNamed:@"Intro_Screen_One"];
        [_viewOne addSubview:imageview];
        
        
        
        
        
        
        
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.7, self.frame.size.width*0.95, 60)];
        
        
        
        
        
        
        
        descriptionLabel.text = [NSString stringWithFormat:@"¿Sabías qué tus datos personales son usados cómo moneda de cambio por terceros?\n\n¡Enteraté cómo!"];
        descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue " size:18.0];
        descriptionLabel.textColor = [UIColor whiteColor];
        descriptionLabel.textAlignment =  NSTextAlignmentCenter;
        descriptionLabel.numberOfLines = 0;
        [descriptionLabel sizeToFit];
        [_viewOne addSubview:descriptionLabel];
        
        CGPoint labelCenter = CGPointMake(self.center.x , self.frame.size.height*.7);
        descriptionLabel.center = labelCenter;
        
    }
    return _viewOne;
    
}

-(UIView *)viewTwo {
    if (!_viewTwo) {
        CGFloat originWidth = self.frame.size.width;
        CGFloat originHeight = self.frame.size.height;
        
        _viewTwo = [[UIView alloc] initWithFrame:CGRectMake(originWidth, 0, originWidth, originHeight)];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height*.05, self.frame.size.width*.8, 60)];
        titleLabel.center = CGPointMake(self.center.x, self.frame.size.height*.1);
        // titleLabel.text = [NSString stringWithFormat:@"Auditiva"];
        titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:40.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment =  NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        [_viewTwo addSubview:titleLabel];
        
        
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.2, (self.frame.size.height*.01) - 15, self.frame.size.width*.6, self.frame.size.width)];
        
        //UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.34, self.frame.size.height*.12, self.frame.size.width*.33, self.frame.size.width)];
        
        
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.image = [UIImage imageNamed:@"Intro_Screen_Two"];
        [_viewTwo addSubview:imageview];
        
        
        
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.7, self.frame.size.width*0.9, 60)];
        descriptionLabel.text = [NSString stringWithFormat:@"Cada uno de tus datos personales tiene un valor diferente."];
        descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue " size:18.0];
        descriptionLabel.textColor = [UIColor whiteColor];
        descriptionLabel.textAlignment =  NSTextAlignmentCenter;
        descriptionLabel.numberOfLines = 0;
        [descriptionLabel sizeToFit];
        [_viewTwo addSubview:descriptionLabel];
        
        CGPoint labelCenter = CGPointMake(self.center.x, self.frame.size.height*.7);
        descriptionLabel.center = labelCenter;
    }
    return _viewTwo;
    
}

-(UIView *)viewThree{
    
    if (!_viewThree) {
        CGFloat originWidth = self.frame.size.width;
        CGFloat originHeight = self.frame.size.height;
        
        _viewThree = [[UIView alloc] initWithFrame:CGRectMake(originWidth*2, 0, originWidth, originHeight)];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height*.05, self.frame.size.width*.8, 60)];
        titleLabel.center = CGPointMake(self.center.x, self.frame.size.height*.1);
        //titleLabel.text = [NSString stringWithFormat:@"Visual"];
        titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:40.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment =  NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        [_viewThree addSubview:titleLabel];
        
        
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.36, (self.frame.size.height*.01) - 20 , self.frame.size.width*.27, self.frame.size.width)];
        
        //UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.25, self.frame.size.height*.1, self.frame.size.width*.5, self.frame.size.width)];
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.image = [UIImage imageNamed:@"Intro_Screen_Three"];
        [_viewThree addSubview:imageview];
        
        
        
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.7, self.frame.size.width*0.9, 60)];
        descriptionLabel.text = [NSString stringWithFormat:@"Calcula el valor de tus datos de manera interactiva."];
        descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue " size:18.0];
        descriptionLabel.textColor = [UIColor whiteColor];
        descriptionLabel.textAlignment =  NSTextAlignmentCenter;
        descriptionLabel.numberOfLines = 0;
        [descriptionLabel sizeToFit];
        [_viewThree addSubview:descriptionLabel];
        
        CGPoint labelCenter = CGPointMake(self.center.x, self.frame.size.height*.7);
        descriptionLabel.center = labelCenter;
    }
    return _viewThree;
    
}

-(UIView *)viewFour {
    if (!_viewFour) {
        
        CGFloat originWidth = self.frame.size.width;
        CGFloat originHeight = self.frame.size.height;
        
        _viewFour = [[UIView alloc] initWithFrame:CGRectMake(originWidth*3, 0, originWidth, originHeight)];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height*.05, self.frame.size.width*.8, 60)];
        titleLabel.center = CGPointMake(self.center.x, self.frame.size.height*.1);
        //titleLabel.text = [NSString stringWithFormat:@"Táctil"];
        titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:40.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment =  NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        [_viewFour addSubview:titleLabel];
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.34, (self.frame.size.height*.01) - 20, self.frame.size.width*.36, self.frame.size.width)];
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.image = [UIImage imageNamed:@"Intro_Screen_Four"];
        [_viewFour addSubview:imageview];
        
        
        
        
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.7, self.frame.size.width*0.9, 60)];
        descriptionLabel.text = [NSString stringWithFormat:@"Recibe información útil acerca de la protección de datos."];
        descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue " size:18.0];
        descriptionLabel.textColor = [UIColor whiteColor];
        descriptionLabel.textAlignment =  NSTextAlignmentCenter;
        descriptionLabel.numberOfLines = 0;
        [descriptionLabel sizeToFit];
        [_viewFour addSubview:descriptionLabel];
        
        CGPoint labelCenter = CGPointMake(self.center.x, self.frame.size.height*.7);
        descriptionLabel.center = labelCenter;
        
    }
    return _viewFour;
    
}



-(UIView *)viewFive {
    if (!_viewFive) {
        
        CGFloat originWidth = self.frame.size.width;
        CGFloat originHeight = self.frame.size.height;
        
        _viewFive = [[UIView alloc] initWithFrame:CGRectMake(originWidth*4, 0, originWidth, originHeight)];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height*.05, self.frame.size.width*.8, 60)];
        titleLabel.center = CGPointMake(self.center.x, self.frame.size.height*.1);
        //titleLabel.text = [NSString stringWithFormat:@"Motora"];
        titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:40.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment =  NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        [_viewFive addSubview:titleLabel];
        
        //UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.25, self.frame.size.height*.1, self.frame.size.width*.5, self.frame.size.width)];
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.3, (self.frame.size.height*.01) - 18.9, self.frame.size.width*.399, self.frame.size.width)];
        
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.image = [UIImage imageNamed:@"Intro_Screen_Five"];
        [_viewFive addSubview:imageview];
        
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.7, self.frame.size.width*0.9, 60)];
        descriptionLabel.text = [NSString stringWithFormat:@"Aplicación movil personalizable."];
        descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue " size:18.0];
        descriptionLabel.textColor = [UIColor whiteColor];
        descriptionLabel.textAlignment =  NSTextAlignmentCenter;
        descriptionLabel.numberOfLines = 0;
        [descriptionLabel sizeToFit];
        [_viewFive addSubview:descriptionLabel];
        
        CGPoint labelCenter = CGPointMake(self.center.x, self.frame.size.height*.7);
        descriptionLabel.center = labelCenter;
        
    }
    return _viewFive;
    
}

-(UIView *)viewSix {
    if (!_viewSix) {
        
        CGFloat originWidth = self.frame.size.width;
        CGFloat originHeight = self.frame.size.height;
        
        _viewSix = [[UIView alloc] initWithFrame:CGRectMake(originWidth*5, 0, originWidth, originHeight)];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height*.05, self.frame.size.width*.8, 60)];
        titleLabel.center = CGPointMake(self.center.x, self.frame.size.height*.1);
        //titleLabel.text = [NSString stringWithFormat:@"Táctil"];
        titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:40.0];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.textAlignment =  NSTextAlignmentCenter;
        titleLabel.numberOfLines = 0;
        [_viewSix addSubview:titleLabel];
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width*.36, (self.frame.size.height*.01) - 11, self.frame.size.width*.35, self.frame.size.width)];
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.image = [UIImage imageNamed:@"Intro_Screen_Six"];
        [_viewSix addSubview:imageview];
        
        
        
        
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width*.1, self.frame.size.height*.7, self.frame.size.width*0.9, 60)];
        descriptionLabel.text = [NSString stringWithFormat:@"El objetivo de esta app, es la de crear conciencia sobre el riesgo que tiene proporcionar datos personales, y la de elaborar una simulación sobre la estimación económica sin valor oficial."];
        descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue " size:18.0];
        descriptionLabel.textColor = [UIColor whiteColor];
        descriptionLabel.textAlignment =  NSTextAlignmentCenter;
        descriptionLabel.numberOfLines = 0;
        [descriptionLabel sizeToFit];
        [_viewSix addSubview:descriptionLabel];
        
        CGPoint labelCenter = CGPointMake(self.center.x, self.frame.size.height*.7);
        descriptionLabel.center = labelCenter;
        
    }
    return _viewSix;
}




-(UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
        [_scrollView setDelegate:self];
        [_scrollView setPagingEnabled:YES];
        [_scrollView setContentSize:CGSizeMake(self.frame.size.width*6, self.scrollView.frame.size.height)];
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    return _scrollView;
}

-(UIPageControl *)pageControl {
    
    if (!_pageControl) {
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.frame.size.height*.8, self.frame.size.width, 10)];
        [_pageControl setCurrentPageIndicatorTintColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1.000]];
        
        _pageControl.pageIndicatorTintColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:.4];//color bolitaa
        
        [_pageControl setNumberOfPages:6];
    }
    return _pageControl;
}


-(UIButton *)doneButton {
    if (!_doneButton) {
        _doneButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width*.15, self.frame.size.height*.88, self.frame.size.width*.7, 40)];
        
        
        
        
        
        [[_doneButton layer] setBorderWidth:0.8f];
        [[_doneButton layer] setBorderColor:[UIColor colorWithRed:218/255.0 green:218/255.0 blue:218/255.0 alpha:1.0].CGColor];
        
        //[[myButton layer] setBorderWidth:2.0f];
        //[[myButton layer] setBorderColor:[UIColor greenColor].CGColor];
        
        
        
        [_doneButton setTitle:@"¡Listo!" forState:UIControlStateNormal];
        [_doneButton setTitleColor:[UIColor colorWithRed:35/255.0 green:90/255.0 blue:152/255.0 alpha:1.0] forState:UIControlStateNormal];
        
        [_doneButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:17.0]];
        
        //[_doneButton.titleLabel tintColor= [UIColor whiteColor]];
        
        //[_doneButton.titleLabel.textColor:[UIColor greenColor]];
        
        
        //[_doneButton.titleLabel setTextColor:[UIColor greenColor]];
        
        
        
        
        
        
        [_doneButton setBackgroundColor:[UIColor colorWithRed:218/255.0 green:218/255.0 blue:218/255.0 alpha:0.9]];
        [_doneButton addTarget:self.delegate action:@selector(onDoneButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        
        [_doneButton.layer setCornerRadius:5];
        [_doneButton setClipsToBounds:YES];
    }
    return _doneButton;
}

@end