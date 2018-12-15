//
//  PTHomeCycleTableViewCell.swift
//  PartTime
//
//  Created by linuse on 2018/10/29.
//  Copyright © 2018年 linuse. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

class PTHomeCycleTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var contensizeWidth: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contensizeWidth.constant = screenWidth
        self.collectionView.register(PTHomeClassCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "cell")
        self.flowLayout.itemSize = CGSize.init(width: screenWidth/5.0, height: 100)
        self.flowLayout.minimumLineSpacing = 0.0
        self.flowLayout.minimumInteritemSpacing = 0.0
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib.init(nibName: "PTHomeClassCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PTHomeClassCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension PTHomeCycleTableViewCell{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PTHomeClassCollectionViewCell", for: indexPath);
        return cell;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        NSLog("%ld", indexPath.row)
    }
}
