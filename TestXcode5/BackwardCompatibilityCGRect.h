//
//  BackwardCompatibilityCGRect.h
//  TestXcode5
//
//  Created by Albert Chu on 13-9-19.
//  Copyright (c) 2013年 Albert Chu. All rights reserved.
//

#import <Foundation/Foundation.h>


#define SystemVersion_floatValue    ([[[UIDevice currentDevice] systemVersion] floatValue])


#define CGRM_BC(x, y, w, h)     \
[[BackwardCompatibilityCGRect sharedInstance] backwardCompatibilityCGRectBy:(x+0.f) and:(y+0.f) and:(w+0.f) and:(h+0.f)]


#define Screen_Height   ([[UIScreen mainScreen] applicationFrame].size.height + 20.f)


typedef enum
{
    ScrollView_With_NavBar = 116799992,
    ScrollView_With_NavBar_TabBar
} ScrollView_With;

#define ScrollView_Height_With_NavBar          \
[[BackwardCompatibilityCGRect sharedInstance] backwardCompatibilityScrollViewHeightBy:ScrollView_With_NavBar]

#define ScrollView_Height_With_NavBar_TabBar   \
[[BackwardCompatibilityCGRect sharedInstance] backwardCompatibilityScrollViewHeightBy:ScrollView_With_NavBar_TabBar]


@interface BackwardCompatibilityCGRect : NSObject

+ (BackwardCompatibilityCGRect *)sharedInstance;

- (CGRect)backwardCompatibilityCGRectBy:(CGFloat)x and:(CGFloat)y and:(CGFloat)w and:(CGFloat)h;

- (CGFloat)backwardCompatibilityScrollViewHeightBy:(NSInteger)type;

@end
