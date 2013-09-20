//
//  BackwardCompatibilityCGRect.m
//  TestXcode5
//
//  Created by Albert Chu on 13-9-19.
//  Copyright (c) 2013年 Albert Chu. All rights reserved.
//

#import "BackwardCompatibilityCGRect.h"

@implementation BackwardCompatibilityCGRect

#pragma mark - Singleton

+ (BackwardCompatibilityCGRect *)sharedInstance
{
    static dispatch_once_t pred;
    static BackwardCompatibilityCGRect *sharedInstance = nil;
    
    dispatch_once(&pred, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (CGRect)backwardCompatibilityCGRectBy:(CGFloat)x and:(CGFloat)y and:(CGFloat)w and:(CGFloat)h
{
    if ( SystemVersion_floatValue >= 7.f )
    {
        return CGRectMake(x, y, w, h);
    }
    else
    {
        return CGRectMake(x, (y-64.f), w, h);
    }
}

- (CGFloat)backwardCompatibilityScrollViewHeightBy:(NSInteger)type
{
    if ( SystemVersion_floatValue < 7.f )
    {
        switch (type)
        {
            case ScrollView_With_NavBar:
                return (Screen_Height - 64.f);
                break;
                
            case ScrollView_With_NavBar_TabBar:
                return (Screen_Height - 64.f - 52.f);
                break;
        }
        return 0;
    }
    
    else
    {
        return Screen_Height;
    }
}

@end
