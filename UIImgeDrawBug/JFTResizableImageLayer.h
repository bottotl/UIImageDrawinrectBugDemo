//
//  JFTResizableImageLayer.h
//  UIImgeDrawBug
//
//  Created by 於林涛 on 2020/1/19.
//  Copyright © 2020 於林涛. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JFTResizableImageLayer : CALayer

- (instancetype)initWithImage:(UIImage *)image NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
+ (instancetype)layer NS_UNAVAILABLE;
@property (nonatomic, readonly, nullable) UIImage *image;

@end

NS_ASSUME_NONNULL_END
