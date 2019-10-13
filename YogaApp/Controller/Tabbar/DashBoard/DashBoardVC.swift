//
//  DashBoardVC.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 25/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import UIKit

class DashBoardVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    //MARK:- Outlets
    
    @IBOutlet weak var collectionDashboard: UICollectionView!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configUI()
    }
    
    //MARK:- Helper Methods
    
    func configUI() {
        
        // Calling Menu Button
        //self.addSlideMenuButton(sender: self.MenuButton)
        self.navigationController?.navigationBar.isHidden  = false
        configCollectionView()
        let tabBar = self.tabBarController as! MainTabbarController
        tabBar.showTabBar()
        
    }
    
    //Config Collectionview
    
    func configCollectionView() {
        self.collectionDashboard.register(UINib(nibName: CollectionViewCellIdentifire.kDashBoardCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: CollectionViewCellIdentifire.kDashBoardCollectionViewCell)
        
        self.collectionDashboard.delegate = self
        self.collectionDashboard.dataSource = self
        self.collectionDashboard.reloadData()
    }

    //MARK:-  UICollectionView DataSource & Delegate
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        // #warning Incomplete implementation, return the number of items
        return dashboardData.arrDashboardData.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ((collectionDashboard.frame.size.width - 20) / 3), height: ((collectionDashboard.frame.size.width - 20) / 3))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell:DashBoardCollectionViewCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CollectionViewCellIdentifire.kDashBoardCollectionViewCell, for: indexPath) as! DashBoardCollectionViewCell
        
        let data = dashboardData.arrDashboardData[indexPath.item]
        
        cell.imgCategory.image          = UIImage(named: data["imageName"] ?? "")
        cell.lblCategoryTitle.text      = data["title"]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        }
        else if indexPath.row == 1 {
            
        }
        
    }
    
}
