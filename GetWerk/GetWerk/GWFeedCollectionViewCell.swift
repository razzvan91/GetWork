//
//  GWFeedCollectionViewCell.swift
//  GetWerk
//
//  Created by Razvan Armeanu on 16/10/2018.
//  Copyright © 2018 Razvan. All rights reserved.
//

import UIKit

class GWFeedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var detailsFlowCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        detailsFlowCollectionView.dataSource = self
        detailsFlowCollectionView.delegate = self
        detailsFlowCollectionView.register(UINib(nibName: "DetailsFeedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DetailsFeed")
        
        
    }
    
    override func prepareForReuse() {
        detailsFlowCollectionView.dataSource = nil
        detailsFlowCollectionView.delegate = nil
    }
}

extension GWFeedCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = detailsFlowCollectionView.dequeueReusableCell(withReuseIdentifier: "DetailsFeed", for: indexPath) as! GWDetailsFeedCollectionViewCell
        
        if indexPath.row == 0{
            cell.cellView.backgroundColor = UIColor.yellow
        } else {
            cell.cellView.backgroundColor = UIColor.orange
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.bounds.size;
    }
    
    
}
