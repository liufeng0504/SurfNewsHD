//
//  UIImage+Crop.m
//  Frizzbee
//
//  Created by Ömer Faruk Gül on 27/10/14.
//  Copyright (c) 2014 Louvre Digital. All rights reserved.
//

#import "UIImage+Crop.h"

@implementation UIImage(CropCategory)
- (UIImage *)crop:(CGRect)rect {

    rect = CGRectMake(rect.origin.x * self.scale,
                      rect.origin.y * self.scale,
                      rect.size.width * self.scale,
                      rect.size.height * self.scale);
    
    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, rect);
    UIImage *result = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    CGImageRelease(imageRef);
    return result;
}
@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 