import { requireNativeComponent } from 'react-native';

// requireNativeComponent automatically resolves 'RCTPlayerView' to 'RCTPlayerViewManager'
module.exports = requireNativeComponent('RCTPlayerView', null);