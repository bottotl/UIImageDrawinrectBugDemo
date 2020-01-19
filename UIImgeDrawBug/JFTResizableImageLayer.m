//
//  JFTResizableImageLayer.m
//  UIImgeDrawBug
//
//  Created by 於林涛 on 2020/1/19.
//  Copyright © 2020 於林涛. All rights reserved.
//

#import "JFTResizableImageLayer.h"

@interface JFTResizableImageLayer ()
@property (nonatomic, strong) UIImage *image;
@end

@implementation JFTResizableImageLayer

- (instancetype)initWithImage:(UIImage *)image {
    if (self = [super init]) {
        _image = image;
    }
    return self;
}

- (void)drawInContext:(CGContextRef)ctx {
    [CATransaction setDisableActions:YES];
    UIGraphicsPushContext(ctx);
    [self.image drawInRect:CGContextGetClipBoundingBox(ctx)];
    UIGraphicsPopContext();
}

@end
