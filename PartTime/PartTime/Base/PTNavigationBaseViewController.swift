//
//  PTNavigationBaseViewController.swift
//  PartTime
//
//  Created by linuse on 2018/10/29.
//  Copyright © 2018年 linuse. All rights reserved.
//

import UIKit

class PTNavigationBaseViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = UIColor.brown;
        self.navigationBar.titleTextAttributes = [kCTForegroundColorAttributeName:UIColor.white] as [NSAttributedStringKey : Any] ;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

 

}
