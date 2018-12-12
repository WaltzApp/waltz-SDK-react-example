//
//  WaltzSDKBridge.m
//  waltzSDKReactExample
//
//  Created by Guillaume Vachon on 2018-12-11.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WaltzSDKBridge.h"

#import "waltzSDKReactExample-Swift.h"

@interface WaltzSDKBridge()<RCTBridgeModule>

@end

@implementation WaltzSDKBridge
RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(initManager:
                  (NSString *)licenseKey
                  appUid:(NSString *)appUid) {
  [WaltzSwiftToObjC initManagerWithLicenseKey:licenseKey appUid:appUid];
}

RCT_EXPORT_METHOD(setLoginVisual:
                  (UIImage *)backgroundImage
                  logo:(UIImage *)logo
                  backgroundColor:(UIColor *)backgroundColor
                  primaryColor:(UIColor *)primaryColor) {
  [WaltzSwiftToObjC setLoginVisualWithBackgroundImage:backgroundImage logo:logo backgroundColor:backgroundColor primaryColor:primaryColor];
}

RCT_EXPORT_METHOD(logIn) {
  [WaltzSwiftToObjC logIn];
}

//RCT_EXPORT_METHOD(logIn) { //onReceiveNotification(_ userInfo: [AnyHashable : Any]) -> Bool
//  [WaltzSwiftToObjC logIn];
//}

//RCT_EXPORT_METHOD(updateFcmToken) {
//  [WaltzSwiftToObjC logIn];
//}

RCT_EXPORT_METHOD(beginTransaction) {
  [WaltzSwiftToObjC beginTransaction];
}

RCT_EXPORT_METHOD(startGeofenceService) {
  [WaltzSwiftToObjC startGeofenceService];
}

RCT_EXPORT_METHOD(stopGeofenceService) {
  [WaltzSwiftToObjC stopGeofenceService];
}

RCT_EXPORT_METHOD(getMyGuests) {
  [WaltzSwiftToObjC getMyGuests];
}

RCT_EXPORT_METHOD(getMyInvitations) {
  [WaltzSwiftToObjC getMyInvitations];
}

RCT_EXPORT_METHOD(sendInvitation:
                  (NSString *)firstName
                  lastName:(NSString *)lastName
                  email:(NSString *)email
                  phoneNumber:(NSString *)phoneNumber
                  startDate:(NSDate *)startDate
                  endDate:(NSDate *)endDate) {
  [WaltzSwiftToObjC sendInvitationWithFirstName:firstName lastName:lastName email:email phoneNumber:phoneNumber startDate:startDate endDate:endDate];
}

RCT_EXPORT_METHOD(getUserInfos) {
  [WaltzSwiftToObjC getUserInfos];
}

@end
