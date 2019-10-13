//
//  MainTabbarController.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 25/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController,UITabBarControllerDelegate {

    //MARK:- Outlets
    
    //MARK:- Variables
    var intSelectedIndex : Int = 0
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configTabbar()
    }
    
    //MARK:- Helper methods
    func configTabbar() {
        
        self.delegate = self
        self.selectedIndex = 2
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = color.orangeColor
        self.tabBar.unselectedItemTintColor = UIColor.black
        self.tabBar.items![selectedIndex].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //MARK:- Tabbar Button hide show methods
    func hideTabBar() {
        
        self.tabBar.isTranslucent = true
        self.tabBar.isHidden = true
    }
    
    func showTabBar() {
        self.tabBar.isTranslucent = false
        self.tabBar.isHidden = false
    }
    
    //    MARK: - Tabbar Delegate
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController)
    {
        let selectedIndex = tabBarController.selectedIndex
        
        if selectedIndex == 0 {
           
            self.tabBarController?.tabBar.items![0].selectedImage = UIImage(named: "Profile_White")
           
            self.tabBar.items![0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
            self.tabBar.items![1].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![2].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![3].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![4].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        }
        else if selectedIndex == 1 {
           
            self.tabBarController?.tabBar.items![1].selectedImage = UIImage(named: "Categoty_White")
            
            self.tabBar.items![0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![1].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
            self.tabBar.items![2].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![3].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![4].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        }
        else if selectedIndex == 2 {
            
            self.tabBarController?.tabBar.items![2].selectedImage = UIImage(named: "Home_White")
            
            self.tabBar.items![0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![1].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![2].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
            self.tabBar.items![3].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![4].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        }
        
        else if selectedIndex == 3 {
            
            self.tabBarController?.tabBar.items![1].selectedImage = UIImage(named: "Other_White")
            
            self.tabBar.items![0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![1].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![2].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![3].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
            self.tabBar.items![4].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        }
        else if selectedIndex == 4 {
            
            self.tabBarController?.tabBar.items![2].selectedImage = UIImage(named: "Notifications_White")
            
            self.tabBar.items![0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![1].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![2].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![3].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            self.tabBar.items![4].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        }
        
        (viewController as? UINavigationController)?.popToRootViewController(animated: false)
    }
    
}
extension UITabBar {
    // Workaround for iOS 11's new UITabBar behavior where on iPad, the UITabBar inside
    // the Master view controller shows the UITabBarItem icon next to the text
    override open var traitCollection: UITraitCollection {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return UITraitCollection(horizontalSizeClass: .compact)
        }
        return super.traitCollection
    }
}

