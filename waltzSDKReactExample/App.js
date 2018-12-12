/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {Alert, Button, Platform, StyleSheet, Text, View} from 'react-native';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' + 'Cmd+D or shake for dev menu WAAAAAZAAAA',
  android:
    'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

type Props = {};
export default class App extends Component<Props> {
    
  _onPressButton() {
    Alert.alert('You tapped the button!')
  }
  
  _onLoginPressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge.logIn();
  }
  
  _onStartTransactionPressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge.beginTransaction();
  }
  
  _onGetUserInfoPressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge.getUserInfos();
  }
  
  _onStartGeofencePressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge.startGeofenceService();
  }
  
  _onStopGeofencePressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge.stopGeofenceService();
  }
  
  _onMyGuestsPressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge.getMyGuests();
  }
  
  _onMyInvitationsPressButton() {
    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
    WaltzSDKBridge._onMyInvitationsPressButton();
  }
  
//  _onSendInvitationPressButton() {
//    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
//    WaltzSDKBridge.sendInvitation("iOS SDK first name", lastName: "iOS SDK last name", email: "iossdk@example.com", phoneNumber: "5145457878", startDate: , endDate: );
//  }
//
//  _onInitSDKPressButton() {
//    var WaltzSDKBridge = require('react-native').NativeModules.WaltzSDKBridge;
//    WaltzSDKBridge.initManager();xxx
//  }
  
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>Welcome to React Native!</Text>
        <Text style={styles.instructions}>To get started, edit App.js</Text>
        <Text style={styles.instructions}>{instructions}</Text>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onLoginPressButton}
            title="Login4"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onStartTransactionPressButton}
            title="Start transaction"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onGetUserInfoPressButton}
            title="Get UserInfo"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onStartGeofencePressButton}
            title="Start geofence"
          />
        </View>
          <View style={styles.buttonContainer}>
          <Button
            onPress={this._onStopGeofencePressButton}
            title="Stop geofence"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onMyGuestsPressButton}
            title="My guests"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onMyInvitationsPressButton}
            title="My invitations"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onPressButton}
            title="Send invitation"
          />
        </View>
        <View style={styles.buttonContainer}>
          <Button
            onPress={this._onPressButton}
            title="Init SDK"
          />
        </View>
      </View>

    );
  }
}

//class LoggingButton extends React.Component {
//  // This syntax ensures `this` is bound within handleClick.
//  // Warning: this is *experimental* syntax.
//  handleClick = () => {
//    console.log('this is:', this);
//  }
//
//  render() {
//    return (
//            <button onPress={this.handleClick}>
//            Click me
//            </button>
//            );
//  }
//}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
