//
//  PTHomeViewModel.swift
//  PartTime
//
//  Created by linuse on 2018/10/30.
//  Copyright © 2018年 linuse. All rights reserved.
//

import UIKit
class PTHomeCellModel: NSObject {
    var cellHeight = CGFloat()
    var cellIdentifier = NSString()
    var cell = UITableViewCell()
}

class PTHomeViewModel: NSObject {
   
    var cellModelArray = NSMutableArray()
    
    override init() {
        super.init()
        self.cellModelArray = NSMutableArray.init(capacity: 1)
       
    }
    public func initWithTabelView(tableView:UITableView) -> () {
        let topCellModel = PTHomeCellModel.init();
        topCellModel.cellHeight = 400.0;
        let topNib = UINib.init(nibName: "PTHomeCycleTableViewCell", bundle: nil);
        topCellModel.cellIdentifier =  "PTHomeCycleTableViewCell"
        tableView .register(topNib, forCellReuseIdentifier: topCellModel.cellIdentifier as String)
        topCellModel.cell = tableView.dequeueReusableCell(withIdentifier: "PTHomeCycleTableViewCell")!
        self.cellModelArray .add(topCellModel)
    }
    
    
}
