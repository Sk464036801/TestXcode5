//
//  BackwardCompatibilityCGRect.h
//  TestXcode5
//
//  Created by Albert Chu on 13-9-19.
//  Copyright (c) 2013年 Albert Chu. All rights reserved.
//

#import <Foundation/Foundation.h>

#define Screen_Height   ([[UIScreen mainScreen] applicationFrame].size.height + 20.f)

#define SystemVersion_floatValue    ([[[UIDevice currentDevice] systemVersion] floatValue])

#define CGRM_BC(x, y, w, h)     \
[[BackwardCompatibilityCGRect sharedInstance] backwardCompatibilityCGRectBy:(x+0.f) and:(y+0.f) and:(w+0.f) and:(h+0.f)]

@interface BackwardCompatibilityCGRect : NSObject

+ (BackwardCompatibilityCGRect *)sharedInstance;

- (CGRect)backwardCompatibilityCGRectBy:(CGFloat)x and:(CGFloat)y and:(CGFloat)w and:(CGFloat)h;

@end
