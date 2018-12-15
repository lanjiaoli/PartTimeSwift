//
//  PTHomeViewController.swift
//  PartTime
//
//  Created by linuse on 2018/10/29.
//  Copyright © 2018年 linuse. All rights reserved.
//

import UIKit

class PTHomeViewController: PTBaseViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var homeViewModel: PTHomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "兼职猫"
        self.homeViewModel = PTHomeViewModel.init();
        self.homeViewModel.initWithTabelView(tableView: tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    
    
}
extension PTHomeViewController{
    /*TableView Delegate*/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = self.homeViewModel.cellModelArray.object(at: indexPath.row) as! PTHomeCellModel
        
        return cellModel.cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.homeViewModel.cellModelArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellModel = self.homeViewModel.cellModelArray.object(at: indexPath.row) as! PTHomeCellModel
        
        return cellModel.cellHeight;
    }
}
