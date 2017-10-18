//
//  RCTPlayerViewBridge.m
//  react_native_player
//
//  Created by Dylan Gyesbreghs on 18/10/2017.
//  Copyright © 2017 Dylan Gyesbreghs. All rights reserved.
//

#import "RCTPlayerViewBridge.h"

@implementation RCTPlayerViewBridge

RCT_EXPORT_MODULE(PlayerViewBridge);

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

#pragma mark - Export Methods

RCT_EXPORT_METHOD(play)
{
    [self.view play];
}

RCT_EXPORT_METHOD(pause)
{
    [self.view pause];
}

@end
