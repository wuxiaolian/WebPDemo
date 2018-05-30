//
//  ViewController.m
//  WebPDemo
//
//  Created by Wuxiaolian on 2018/5/30.
//  Copyright © 2018年 Wu. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "UIImage+WebP.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[SDImageCache sharedImageCache] cleanDisk];
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    
    NSString *str1 = @"https://devthinking.com/images/animated.webp";
    str1 = @"https://img.dmall.com/mIndex/201612/a3f819c6-f055-46f0-bd56-4586830bdc45_240x240H.webp";
    [imageview sd_setImageWithURL:[NSURL URLWithString:str1]];
    imageview.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageview];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
