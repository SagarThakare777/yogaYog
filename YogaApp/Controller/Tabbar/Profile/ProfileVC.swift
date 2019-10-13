//
//  ProfileVC.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 25/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    //MARK:- Outlets
    // Views
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwIam: UIView!
    @IBOutlet weak var vwFirstName: UIView!
    @IBOutlet weak var vwLastName: UIView!
    @IBOutlet weak var vwGender: UIView!
    @IBOutlet weak var vwMobileNo: UIView!
    @IBOutlet weak var vwEmail: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configViews()
    }
    
    //Config Views
    func configViews() {
        
        self.vwIam.layer.cornerRadius               = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwIam.layer.borderWidth                = CGFloat(BorderWidth.kOnePxBorder)
        self.vwIam.layer.borderColor                = color.WhiteColor.cgColor
        
        self.vwFirstName.layer.cornerRadius         = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwFirstName.layer.borderWidth          = CGFloat(BorderWidth.kOnePxBorder)
        self.vwFirstName.layer.borderColor          = color.WhiteColor.cgColor
        
        self.vwLastName.layer.cornerRadius          = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwLastName.layer.borderWidth           = CGFloat(BorderWidth.kOnePxBorder)
        self.vwLastName.layer.borderColor           = color.WhiteColor.cgColor
        
        self.vwGender.layer.cornerRadius            = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwGender.layer.borderWidth             = CGFloat(BorderWidth.kOnePxBorder)
        self.vwGender.layer.borderColor             = color.WhiteColor.cgColor
        
        
        self.vwMobileNo.layer.cornerRadius          = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwMobileNo.layer.borderWidth           = CGFloat(BorderWidth.kOnePxBorder)
        self.vwMobileNo.layer.borderColor           = color.WhiteColor.cgColor
        
        
        self.vwEmail.layer.cornerRadius             = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwEmail.layer.borderWidth              = CGFloat(BorderWidth.kOnePxBorder)
        self.vwEmail.layer.borderColor              = color.WhiteColor.cgColor

    }

}
