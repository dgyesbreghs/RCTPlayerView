import React, { Component } from 'react';
import {
  Button,
  NativeModules,
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';
import PlayerView from './PlayerView.js'

let playerViewBridge = NativeModules.PlayerViewBridge;

export default class App extends Component<{}> {
  onPlay = () => {
    playerViewBridge.play();
  }

  onPause = () => {
    console.log(playerViewBridge);
    playerViewBridge.pause();
  }

  render() {
    return (
      <View style={styles.container}>
        <PlayerView 
          style={styles.player}
          source="https://stream2-linear.cdn1.yelo.lab.telenet-ops.be/shls/LIVE$eenhd/2.m3u8?device=OTT02&start=LIVE&end=END"
        />
        <View style={styles.buttonContainer}>
          <Button title="Play" onPress={this.onPlay}/>
          <Button title="Pause" onPress={this.onPause}/>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1
  },
  player: {
    flex: 0.8,
    alignItems: 'center'
  },
  buttonContainer: {
    flex: 0.2,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
  }
});
