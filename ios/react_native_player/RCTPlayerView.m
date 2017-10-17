//
//  RCTPlayerView.m
//  react_native_player
//
//  Created by Dylan Gyesbreghs on 17/10/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTPlayerView.h"

#import <AVFoundation/AVFoundation.h>

@interface RCTPlayerView()

@property (nonatomic, strong) NSString *source;

@property (nonatomic, strong) AVPlayerLayer *playerLayer;
@property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayer *player;

@end

@implementation RCTPlayerView

- (void)setSource:(NSString *)source
{
    _source = source;
    [self playSource];
}

- (void)playSource
{
    NSURL *url = [NSURL URLWithString:self.source];
    AVURLAsset *urlAsset = [[AVURLAsset alloc] initWithURL:url options:nil];
    [self setupPlayerWithUrlAsset:urlAsset];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.playerLayer.frame = self.bounds;
}

#pragma mark - Private Methods

- (void)setupPlayerWithUrlAsset:(AVURLAsset *)urlAsset
{
    self.playerItem = [AVPlayerItem playerItemWithAsset:urlAsset];
    self.player = [[AVPlayer alloc] initWithPlayerItem:self.playerItem];
    self.playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    self.playerLayer.frame = self.bounds;
    [self.layer addSublayer:self.playerLayer];
    
    [self.player play];
}

@end
