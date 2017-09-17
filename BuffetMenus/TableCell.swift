//
//  TableCell.swift
//  BuffetMenus
//
//  Created by vignesh on 9/17/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    var desserts = Dessert.dessertItems()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
}


extension TableCell : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return desserts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuscell", for: indexPath) as! BuffetCell
        let dessert = desserts[indexPath.row]
        cell.foodImageView.image = dessert.image
        cell.titlelabel.text = dessert.title
    
        return cell
    }
}
