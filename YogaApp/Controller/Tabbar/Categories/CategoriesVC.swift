//
//  CategoriesVC.swift
//  YogaApp
//
//  Created by SAGAR THAKARE on 25/08/19.
//  Copyright © 2019 SAGAR THAKARE. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    //MARK:- Outlets
    @IBOutlet weak var tblCategory: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableviewConfig()
    }
    

    func tableviewConfig() {
        self.tblCategory.register(UINib(nibName: TableViewCellIdentifire.kCategoryTableViewCell, bundle: nil), forCellReuseIdentifier: TableViewCellIdentifire.kCategoryTableViewCell)
        
        self.tblCategory.delegate               = self
        self.tblCategory.dataSource             = self
        self.tblCategory.separatorStyle         = .none
        self.tblCategory.estimatedRowHeight     = 220
        
    }
    
    //MARK:- TableView DataSource, Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 21
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblCategory.dequeueReusableCell(withIdentifier:
            TableViewCellIdentifire.kCategoryTableViewCell, for: indexPath) as! CategoryTableViewCell
        
        cell.selectionStyle = .none
        
        return cell
        
    }
}
