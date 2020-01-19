//
//  ViewController.m
//  UIImgeDrawBug
//
//  Created by 於林涛 on 2020/1/19.
//  Copyright © 2020 於林涛. All rights reserved.
//

#import "ViewController.h"
#import "JFTResizableImageLayer.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [[UIImage imageNamed:@"edit_bubble_blue"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 24.0, 34.0, 41.0) resizingMode:UIImageResizingModeStretch];
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    JFTResizableImageLayer *layer = [[JFTResizableImageLayer alloc] initWithImage:image];
    layer.frame = CGRectMake(0, 0, 200, 200);
//    layer.contentsScale = 2.0;// no bug
    layer.contentsScale = 2.6087;// this line will cause bug
    [layer setNeedsDisplay];
    
    [_contentView.layer addSublayer:layer];
    
    [self.view addSubview:_contentView];
    _imageView = [[UIImageView alloc] initWithImage:image];
    _imageView.frame = CGRectMake(10, 250, 400, 400);
    _imageView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.3, 0.3);
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_imageView];
}


@end
