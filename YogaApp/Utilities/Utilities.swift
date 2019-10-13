//
//  Utilities.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 25/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import Foundation
import UIKit

enum PasswordError: String, Error {
    case needsAtLeastSixCharacters/*
     case needsAtLeastOneLetter
     case needsAtLeastOneDecimalDigit*/
}

class Utilities: NSObject {
    
//MARK: Get trimmed string
static func trimWhiteSpaces(_ stringToTrim: String) -> String {
    let string: String = stringToTrim
    let trimmedString: String = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    return trimmedString
}

//MARK:- Validation
//Validate email
class func isValidEmail(_ strEmail:String) -> Bool {
    let emailRegEx = "(?:[a-zA-Z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-zA-Z0-9!#$%\\&'*+/=?\\^_`{|}"+"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"+"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"+"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"+"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"+"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"+"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: strEmail)
}

//validate TextField
class func validateTextFieldString(object:String?,validationMessage:String?)->Bool {
    let str = object?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    if (str?.count)! > 0 {
        return true
    }
    
    self.showAlertService(title: "", message: validationMessage)
    return false
}

//validate email
class func validateEmail(email:String?,validationMessage:String)->Bool
{
    if validateTextFieldString(object: email, validationMessage: validationMessage)
    {
        if !isValidEmail(email!)
        {
            self.showAlertService(title: "", message: AlertMessages.kEmailValidate)
            
            return false
        }
        return true
    }
    return false
}

//validate password
class func validatePassword(object:String?,validationMessage:String?)->Bool
{
    do {
        
        try object?.validatePassword()
        //print("valid password action")
        return true
    } catch let error as PasswordError {
        //print("Password error:", error)  // Password error: needsAtLeastOneLetter
        switch error {
        case .needsAtLeastSixCharacters:
            self.showAlertService(title: "", message: validationMessage)
            return false/*
             case .needsAtLeastOneLetter:
             return false
             case .needsAtLeastOneDecimalDigit:
             return false*/
        }
        
    } catch {
        print("error:", error)
    }
    return false
}


class func showAlertService(title: String?, message: String?) {
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: AlertButtonTitle.kOK, style: UIAlertAction.Style.default, handler: nil))
    UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }

}

//MARK:- Password validation
extension String {
    
    func validatePassword() throws  {
        guard self.count > 5
            else { throw PasswordError.needsAtLeastSixCharacters }
        /*guard rangeOfCharacter(from: .letters) != nil
         else { throw PasswordError.needsAtLeastOneLetter }
         guard rangeOfCharacter(from: .decimalDigits) != nil
         else { throw PasswordError.needsAtLeastOneDecimalDigit }*/
    }
}


extension UIViewController {
    
    func showAlert(title: String?, message: String?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: AlertButtonTitle.kOK, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: Empty screen manage
    
    func HandleEmptytableView(strmessage : String, tableview: UITableView)
    {
        let EmptyBackGroundView = UIView.init(frame: tableview.frame)
        
        /*
         * NOTE: Below Code is commented because if in future at empty screen
         *       Image needs to add at that time only remove comment and use it.
         *
         
         let netWorkImageView = UIImageView.init(image: UIImage.init(named: "ic_no_data_available.png"))
         netWorkImageView.contentMode = .bottom
         netWorkImageView.frame = CGRect(x: (self.view.frame.size.width - 100)/2, y: (self.view.frame.size.height-100)/2 - 50, width: 100, height: 100)
         EmptyBackGroundView.addSubview(netWorkImageView)
         */
        
        let messageLabel = UILabel.init()
        if UIDevice.current.userInterfaceIdiom == .pad
        {
            messageLabel.frame = CGRect(x: (EmptyBackGroundView.bounds.size.width-300)/2, y: (EmptyBackGroundView.bounds.size.height-100)/2 + 20, width: 300, height: 100)
        }
        else {
            messageLabel.frame = CGRect(x: 10, y: (EmptyBackGroundView.bounds.size.height-100)/2 + 20, width: EmptyBackGroundView.bounds.size.width-20, height: 100)
        }
        messageLabel.text = strmessage
        messageLabel.textColor = UIColor.lightGray
        messageLabel.numberOfLines = 2
        messageLabel.textAlignment = .center
        EmptyBackGroundView .addSubview(messageLabel)
        
        tableview.backgroundView = EmptyBackGroundView
        tableview.backgroundView?.isHidden = false
        tableview.separatorColor = UIColor.clear
    }
    
    //MARK: Empty screen manage
    
    func HandleEmptyCollectionView(strmessage : String, collectionView: UICollectionView)
    {
        let EmptyBackGroundView = UIView.init(frame: collectionView.frame)
        
        /*
         * NOTE: Below Code is commented because if in future at empty screen
         *       Image needs to add at that time only remove comment and use it.
         *
         
         let netWorkImageView = UIImageView.init(image: UIImage.init(named: "ic_no_data_available.png"))
         netWorkImageView.contentMode = .bottom
         netWorkImageView.frame = CGRect(x: (self.view.frame.size.width - 100)/2, y: (self.view.frame.size.height-100)/2 - 50, width: 100, height: 100)
         EmptyBackGroundView.addSubview(netWorkImageView)
         */
        
        let messageLabel = UILabel.init()
        if UIDevice.current.userInterfaceIdiom == .pad
        {
            messageLabel.frame = CGRect(x: (EmptyBackGroundView.bounds.size.width-300)/2, y: (EmptyBackGroundView.bounds.size.height-100)/2 + 20, width: 300, height: 100)
        }
        else {
            messageLabel.frame = CGRect(x: 10, y: (EmptyBackGroundView.bounds.size.height-100)/2 + 20, width: EmptyBackGroundView.bounds.size.width-20, height: 100)
        }
        messageLabel.text = strmessage
        messageLabel.textColor = UIColor.lightGray
        messageLabel.numberOfLines = 2
        messageLabel.textAlignment = .center
        EmptyBackGroundView .addSubview(messageLabel)
        
        collectionView.backgroundView = EmptyBackGroundView
        collectionView.backgroundView?.isHidden = false
    }
    
    
}
