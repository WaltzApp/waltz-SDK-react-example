//
//  WaltzSwiftToObjC.swift
//  waltzSDKReactExample
//
//  Created by Guillaume Vachon on 2018-12-12.
//  Copyright © 2018 Facebook. All rights reserved.
//

import WaltzAccess

@objc class WaltzSwiftToObjC: NSObject {
  
  @objc class func initManager(licenseKey: String, appUid: String) {
    _ = WaltzSDKMgr.sharedManager.initManager(licenseKey: licenseKey, appUid: appUid)
  }

  @objc class func setLoginVisual(backgroundImage: UIImage? = nil, logo: UIImage? = nil, backgroundColor: UIColor? = nil, primaryColor: UIColor? = nil) {
    _ = WaltzSDKMgr.sharedManager.setLoginVisual(backgroundImage: backgroundImage, logo: logo, backgroundColor: backgroundColor, primaryColor: primaryColor)
  }
  
  @objc class func logIn() {
    WaltzSDKMgr.sharedManager.logIn()
  }
  
  @objc class func beginTransaction() {
    WaltzSDKMgr.sharedManager.beginTransaction()
  }
  
  @objc class func startGeofenceService() { //enteredWaltzGeofence: ((String)->())? = nil
    WaltzSDKMgr.sharedManager.startGeofenceService()
  }
  
  @objc class func stopGeofenceService() {
    WaltzSDKMgr.sharedManager.stopGeofenceService()
  }
  
  @objc class func getMyGuests() {
    WaltzSDKMgr.sharedManager.getMyGuests()
  }
  
  @objc class func getMyInvitations() {
    WaltzSDKMgr.sharedManager.getMyInvitations()
  }
  
  @objc class func sendInvitation(firstName: String, lastName: String, email: String, phoneNumber: String?, startDate: Date, endDate: Date) {
    WaltzSDKMgr.sharedManager.sendInvitation(firstName: firstName, lastName: lastName, email: email, phoneNumber: phoneNumber, startDate: startDate, endDate: endDate)
  }
  
  @objc class func getUserInfos() {
    WaltzSDKMgr.sharedManager.getUserInfos()
  }
}

//public protocol WltzSDKMgrDelegate {
//  func didFinishWaltzLogin(_ errorCode: SDKResponseCodes)
//  func didFinishWaltzTransactionWithErrorCode(_ errorCode: SDKResponseCodes)
//  func didFinishWaltzGeofenceSetupWithErrorCode(_ errorCode: SDKResponseCodes)
//  func didGetWaltzMyGuestsWithErrorCode(_ errorCode: SDKResponseCodes, guests: [InvitationResponse]?)
//  func didGetWaltzMyInvitationsWithErrorCode(_ errorCode: SDKResponseCodes, invitations: [InvitationResponse]?)
//  func didSendWaltzInvitationWithErrorCode(_ errorCode: SDKResponseCodes)
//  func didGetWaltzUserInfoWithErrorCode(_ errorCode: SDKResponseCodes, userInfo: WaltzUserInfos?)
//  func didUpdateWaltzFCMTokenWithErrorCode(_ errorCode: SDKResponseCodes)
//  func didGetWaltzDDInfos(_ ddInfos: DDInfos)
//}
