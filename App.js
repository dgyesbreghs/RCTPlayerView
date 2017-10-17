/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';

import PlayerView from './PlayerView.js'

export default class App extends Component<{}> {
  render() {
    return (
      <PlayerView style={styles.player} source="https://stream2-linear.cdn1.yelo.lab.telenet-ops.be/shls/LIVE$eenhd/2.m3u8?device=OTT02&start=LIVE&end=END"/>
    );
  }
}

const styles = StyleSheet.create({
  player: {
    flex: 1,
    backgroundColor: 'red',
  }
});
