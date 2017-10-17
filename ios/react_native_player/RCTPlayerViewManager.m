//
//  RCTPlayerViewManager.m
//  react_native_player
//
//  Created by Dylan Gyesbreghs on 17/10/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTPlayerViewManager.h"
#import "RCTPlayerView.h"

#import <React/RCTConvert.h>

@implementation RCTPlayerViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[RCTPlayerView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(source, NSString)

@end
