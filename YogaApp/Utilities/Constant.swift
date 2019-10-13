//
//  Constant.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 24/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import UIKit
import Foundation


//MARK:- Identifires

// Storyboard Identifires
struct StroyBoardIdentifire {
    
    static let kMain                                    = "Main"
    static let kDashboard                               = "Dashboard"
}

//View Controllers Identifires
struct ControllerIdentifire {
    
    static let kMainPageVC                              = "MainPageVC"
    static let kSignInVC                                = "SignInVC"
    static let kSignUpVC                                = "SignUpVC"
    
    static let kMainTabbarController                    = "MainTabbarController"
    
    static let kDashBoardVC                             = "DashBoardVC"
    static let kProfileVC                               = "ProfileVC"
    static let kCategoriesVC                            = "CategoriesVC"
    static let kNotificationVC                          = "NotificationVC"
    static let kOtherVC                                 = "OtherVC"
    
}

//TableView Cell Identifires
struct TableViewCellIdentifire {
    
    static let kMenuTableviewCell                       = "MenuTableviewCell"
    static let kCategoryTableViewCell                   = "CategoryTableViewCell"
    
    
}

//CollectionView Cell Identifires
struct CollectionViewCellIdentifire {
    
    static let kDashBoardCollectionViewCell             = "DashBoardCollectionViewCell"
    
}

//MARK:- All Alert Messages
// Alert Button Title
struct AlertButtonTitle {
    static let kOK                                      = "OK"
    static let kCancel                                  = "Cancel"
    static let kDone                                    = "Done"
}

// Alert Messages
struct AlertMessages {
    
    static let kEmailBlank                              = "Please enter email."
    static let kEmailValidate                           = "Please enter valid email"
    static let kPasswordBlank                           = "Please enter password."
    static let kPasswordCharacter                       = "Password must contain at least 6 characters."
    static let kCameranotfoundTitleMessage              = "Camera Not Found"
    static let kCameranotfoundAlertMessage              = "This device has no Camera"
    static let kCameraString                            = "Camera"
    static let kGalleryString                           = "Gallery"
    static let kCancelString                            = "Cancel"
    static let kChooseMedia                             = "Choose Media"
}

//MARK:- Corner Radius configuration
struct CornerRadius {
    static let kButtonCornerRadius                       = 5.0
}

struct BorderWidth {
    static let kZeroPxBorder                            = 0.0
    static let kOnePxBorder                             = 1.0
    static let kTwoPxBorder                             = 2.0
    static let kThreePxBorder                           = 3.0
    static let kFourPxBorder                            = 4.0
    static let kFivePxBorder                            = 5.0
}

//MARK:- Color Constants configure
struct color {
    static let orangeColor       = UIColor(red: 255/255, green: 147/255, blue: 0/255, alpha: 1)
    static let themeColor       = UIColor(red: 6/255, green: 92/255, blue: 150/255, alpha: 1)
    static let GreenThemeColor  = UIColor(red: 1/255, green: 160/255, blue: 155/255, alpha: 1)
    static let PinkThemeColor   = UIColor(red: 167/255, green: 54/255, blue: 108/255, alpha: 1)
    static let kBlueThemeColor  = UIColor(red: 2/255, green: 132/255, blue: 192/255, alpha: 1)
    static let ClearColor       = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0)
    static let HighAlertColor   = UIColor(red: 212/255, green: 51/255, blue: 33/255, alpha: 1)
    static let AbnormalColor    = UIColor(red: 255/255, green: 116/255, blue: 16/255, alpha: 1)
    static let BlackColor       = UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1)
    static let GrayColor        = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
    static let WhiteColor       = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    static let LightGrayColor   = UIColor(red: 231/255, green: 232/255, blue: 233/255, alpha: 1)
}

// Picker View
struct professionType {
    static let arrProfessionType = ["Doctor","Engineer","House Wife","Made", "Self Employee","Worker","Business","Sales & Service","Other"]
}

struct genderType {
    static let arrGenderType = ["Male","Female","Others"]
}

//MARK:- Dashboard Data Array
struct dashboardData
{
    static let arrDashboardData = [["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"],
                                   ["imageName":"Yoga_Login_Icon","title":"YogaYog"]]
}
