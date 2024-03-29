//
//  ImageCacher.h
//  AAPinChe
//
//  Created by Reese on 13-4-3.
//  Copyright (c) 2013年 All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "FileHelpers.h"

@interface ImageCacher : NSObject
@property (retain,nonatomic) NSString *type;
+(ImageCacher*)defaultCacher;
-(void)cacheImage:(NSDictionary*)aDic;
-(void) setFlip;
-(void) setCube;
-(void) setFade;
@end
