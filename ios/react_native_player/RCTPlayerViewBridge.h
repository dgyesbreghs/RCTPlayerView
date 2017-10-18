//
//  RCTPlayerViewBridge.h
//  react_native_player
//
//  Created by Dylan Gyesbreghs on 18/10/2017.
//  Copyright © 2017 Dylan Gyesbreghs. All rights reserved.
//

#import <React/RCTBridgeModule.h>

#import "RCTPlayerView.h"

@interface RCTPlayerViewBridge : NSObject<RCTBridgeModule>

@property (nonatomic, strong) RCTPlayerView *view;

@end
