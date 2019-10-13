//
//  SignUpVC.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 25/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    //MARK:- Outlts
    // Textfield Outlets
    @IBOutlet weak var txtIam: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtGender: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    // Image Outlets
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var imgDownArrow: UIImageView!
    @IBOutlet weak var imgGenderDownArrow: UIImageView!
    
    // Button Outlets
    @IBOutlet weak var btnProfile: UIButton!
    @IBOutlet weak var btnPassword: UIButton!
    @IBOutlet weak var btnConfirmPassword: UIButton!

    @IBOutlet weak var btnSignUp: UIButton!
    
    // Views
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwIam: UIView!
    @IBOutlet weak var vwFirstName: UIView!
    @IBOutlet weak var vwLastName: UIView!
    @IBOutlet weak var vwGender: UIView!
    @IBOutlet weak var vwMobileNo: UIView!
    @IBOutlet weak var vwEmail: UIView!
    @IBOutlet weak var vwPassword: UIView!
    @IBOutlet weak var vwConfirmPassword: UIView!
    
    //MARK: - Variables
    var isPasswordShow              : Bool = false
    var isConfirmPasswordShow       : Bool = false
    var isEightteenplus             : Bool = false
    var isAgree                     : Bool = false
    var coverImagePicker            = UIImagePickerController()
    var iAmPickerView               : UIPickerView!
    var genderPickerView            : UIPickerView!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.navigationBar.isHidden  = true
    }
    
    // UI Configurations
    func configUI() {
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.barTintColor = color.orangeColor
        //For back button in navigation bar
        self.title = "Sign Up"
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        let btnLeft=UIButton(type: .system)
        btnLeft.frame=CGRect(x: 0, y: 0, width: 25, height: 25)
        let image = UIImage(named: "BackButton")?.withRenderingMode(.alwaysTemplate)
        btnLeft.setImage(image, for: .normal)
        btnLeft.tintColor = UIColor.white
        btnLeft.addTarget(self, action: #selector(self.backButtonClick), for: .touchUpInside)
        
        let barButton = UIBarButtonItem(customView: btnLeft)
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.leftBarButtonItem = barButton
        
        let buttonImage = UIImage(named: "HidePassword")
        self.btnPassword.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        self.btnPassword.tintColor = color.WhiteColor
        
        let buttonImage1 = UIImage(named: "HidePassword")
        self.btnConfirmPassword.setImage(buttonImage1?.withRenderingMode(.alwaysTemplate), for: .normal)
        self.btnConfirmPassword.tintColor = color.WhiteColor
        
        configViews()
        configCornerRadius()
        configTextFieldDelegates()
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
        
        self.vwPassword.layer.cornerRadius          = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwPassword.layer.borderWidth           = CGFloat(BorderWidth.kOnePxBorder)
        self.vwPassword.layer.borderColor           = color.WhiteColor.cgColor
        
        self.vwConfirmPassword.layer.cornerRadius   = CGFloat(CornerRadius.kButtonCornerRadius)
        self.vwConfirmPassword.layer.borderWidth    = CGFloat(BorderWidth.kOnePxBorder)
        self.vwConfirmPassword.layer.borderColor    = color.WhiteColor.cgColor
    }
    
    func configCornerRadius() {
        
        // Button Round Corners
        self.btnSignUp.round(with: .both, radius: self.btnSignUp.frame.height/2)
        
        // Image Corner Radius
        self.imgProfile.layer.borderColor           = color.WhiteColor.cgColor
        self.imgProfile.layer.borderWidth           = CGFloat(BorderWidth.kOnePxBorder)
        self.imgProfile.layer.cornerRadius          = self.imgProfile.frame.height / 2
        
        self.imgDownArrow.image                     = self.imgDownArrow.image?.withRenderingMode(.alwaysTemplate)
        self.imgDownArrow.tintColor                 = color.WhiteColor
        
        self.imgGenderDownArrow.image               = self.imgGenderDownArrow.image?.withRenderingMode(.alwaysTemplate)
        self.imgGenderDownArrow.tintColor           = color.WhiteColor
        
    }
    
    func configTextFieldDelegates() {
        
        self.txtIam.delegate                = self
        self.txtFirstName.delegate          = self
        self.txtLastName.delegate           = self
        self.txtGender.delegate             = self
        self.txtMobileNo.delegate           = self
        self.txtEmail.delegate              = self
        self.txtPassword.delegate           = self
        self.txtConfirmPassword.delegate    = self
    }
    
    //MARK: Picker View For Event & Intracity
    func pickUp(_ textField : UITextField) {
        
        if textField == self.txtIam {
            self.iAmPickerView = UIPickerView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
            self.iAmPickerView.delegate = self
            self.iAmPickerView.dataSource = self
            self.iAmPickerView.backgroundColor = UIColor.white
            textField.inputView = self.iAmPickerView
            self.txtIam.inputView = self.iAmPickerView
        }
        else {
            self.genderPickerView = UIPickerView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
            self.genderPickerView.delegate = self
            self.genderPickerView.dataSource = self
            self.genderPickerView.backgroundColor = UIColor.white
            textField.inputView = self.genderPickerView
            self.txtGender.inputView = self.genderPickerView
        }
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: AlertButtonTitle.kDone, style: .plain, target: self, action: #selector(doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: AlertButtonTitle.kCancel, style: .plain, target: self, action: #selector(cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
        if textField == self.txtIam {
            self.txtIam.inputAccessoryView = toolBar
        }
        else {
            self.txtGender.inputAccessoryView = toolBar
        }
    }
    
    @objc func doneClick(_ textField : UITextField) {
        if textField == self.txtIam {
            self.txtIam.resignFirstResponder()
        }
        else {
            self.txtGender.resignFirstResponder()
        }
    }
    
    @objc func cancelClick(_ textField : UITextField) {
        if textField == self.txtIam {
            self.txtIam.resignFirstResponder()
        }
        else {
            self.txtGender.resignFirstResponder()
        }
    }
    //MARK:- All Button Actions
    // Back Button Action
    @objc func backButtonClick()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    // Selcet Profile Image
    @IBAction func ProfilePicButtonAction(_ sender: Any) {
        self.selectPicActionsheet()
    }
    
    // Hide / Show Password Button Action
    @IBAction func PasswordShowButtonAction(_ sender: Any) {
        if isPasswordShow == false {
            isPasswordShow = true
            
            let buttonImage = UIImage(named: "ShowPassword")
            self.btnPassword.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
            self.btnPassword.tintColor = color.WhiteColor
            
            txtPassword.isSecureTextEntry = false
        }
        else {
            isPasswordShow = false
            
            let buttonImage = UIImage(named: "HidePassword")
            self.btnPassword.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
            self.btnPassword.tintColor = color.WhiteColor
            
            txtPassword.isSecureTextEntry = true
        }
    }
    
    @IBAction func ConfirmPasswordButtonAction(_ sender: Any) {
        if isConfirmPasswordShow == false {
            isConfirmPasswordShow = true
            
            let buttonImage = UIImage(named: "ShowPassword")
            self.btnConfirmPassword.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
            self.btnConfirmPassword.tintColor = color.WhiteColor
  
            txtConfirmPassword.isSecureTextEntry = false
        }
        else {
            isConfirmPasswordShow = false
            
            let buttonImage = UIImage(named: "HidePassword")
            self.btnConfirmPassword.setImage(buttonImage?.withRenderingMode(.alwaysTemplate), for: .normal)
            self.btnConfirmPassword.tintColor = color.WhiteColor
      
            txtConfirmPassword.isSecureTextEntry = true
        }
    }
    
    
    // Submit Button Action
    @IBAction func signUpBtnAction(_ sender: Any) {
        
        
    }
    
}

//MARK:- Textfield Delegate
extension SignUpVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.txtIam {
            self.txtFirstName.becomeFirstResponder()
        }
        else if textField == self.txtFirstName {
            self.txtLastName.becomeFirstResponder()
        }
        else if textField == self.txtLastName {
            self.txtGender.becomeFirstResponder()
        }
        else if textField == self.txtGender {
            self.txtMobileNo.becomeFirstResponder()
        }
        else if textField == self.txtMobileNo {
            self.txtEmail.becomeFirstResponder()
        }
        else if textField == self.txtEmail {
            self.txtPassword.becomeFirstResponder()
        }
        else if textField == self.txtPassword {
            self.txtConfirmPassword.becomeFirstResponder()
        }
        
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self.txtIam {
            self.pickUp(self.txtIam)
        }
        else if textField == self.txtGender {
            self.pickUp(self.txtGender)
        }
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == self.txtIam {
            return false
        }
        else {
            return true
        }
    }
}

//MARK:- PickerView Delegate & DataSource
extension SignUpVC: UIPickerViewDelegate,UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.iAmPickerView {
            return professionType.arrProfessionType.count
        }
        else {
            return genderType.arrGenderType.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.iAmPickerView {
            return professionType.arrProfessionType[row]
        }
        else {
            return genderType.arrGenderType[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.iAmPickerView {
            self.txtIam.text = professionType.arrProfessionType[row]
        }
        else{
            self.txtGender.text = genderType.arrGenderType[row]
        }
    }
    
}


//MARK:- Image picker delegates
extension SignUpVC: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func selectPicActionsheet() {
        let alert = UIAlertController(title: AlertMessages.kChooseMedia, message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: AlertMessages.kCameraString, style: .default , handler:{ (UIAlertAction)in
            self.profilepicCameraConfig()
        }))
        alert.addAction(UIAlertAction(title: AlertMessages.kGalleryString, style: .default , handler:{ (UIAlertAction)in
            self.profilepicGallery()
        }))
        alert.addAction(UIAlertAction(title: AlertMessages.kCancelString, style: .destructive , handler:{ (UIAlertAction)in
        }))
        
        self.present(alert, animated: true, completion: {
        })
    }
    func profilepicGallery() {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            coverImagePicker.delegate = self
            coverImagePicker.sourceType = .savedPhotosAlbum
            coverImagePicker.allowsEditing = true
            coverImagePicker.view.isMultipleTouchEnabled = false
            self.present(coverImagePicker, animated: true, completion: nil)
        }
    }
    // config first image pick from camera
    func profilepicCameraConfig() {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)) {
            coverImagePicker.delegate = self
            coverImagePicker.allowsEditing = true
            coverImagePicker.view.isMultipleTouchEnabled = false
            coverImagePicker.sourceType = UIImagePickerController.SourceType.camera
            coverImagePicker.cameraCaptureMode = .photo
            present(coverImagePicker, animated: true, completion: nil)
        }
        else{
            self.showAlert(title: AlertMessages.kCameranotfoundTitleMessage, message: AlertMessages.kCameranotfoundAlertMessage)
        }
    }
    
    //MARK: -Image picker Did finish pick media
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.editedImage]! as! UIImage
        self.imgProfile.image = image
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        self.imgProfile.isUserInteractionEnabled = true
        self.imgProfile.addGestureRecognizer(tapGestureRecognizer)
        
        self.dismiss(animated: true, completion: nil);
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        self.selectPicActionsheet()
    }
}
