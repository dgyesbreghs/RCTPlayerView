//
//  RCTPlayerViewManager.m
//  react_native_player
//
//  Created by Dylan Gyesbreghs on 17/10/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTPlayerViewManager.h"
#import "RCTPlayerView.h"
#import "RCTPlayerViewBridge.h"

#import <UIKit/UIKit.h>

#import <React/RCTConvert.h>


@interface RCTPlayerViewManager()

@property (nonatomic, strong) RCTPlayerView *view;
@property (nonatomic, strong) RCTPlayerViewBridge *playerViewBridge;

@end

@implementation RCTPlayerViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    if (!_view) {
        _view = [[RCTPlayerView alloc] init];
        self.playerViewBridge.view = _view;
    }
    return _view;
}

RCT_EXPORT_VIEW_PROPERTY(source, NSString)

#pragma mark - Getters

- (RCTPlayerViewBridge *)playerViewBridge
{
    if (!_playerViewBridge) {
        _playerViewBridge = [self.bridge moduleForName:@"PlayerViewBridge"];
    }
    return _playerViewBridge;
}

@end
