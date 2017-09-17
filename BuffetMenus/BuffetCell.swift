//
//  BuffetCell.swift
//  BuffetMenus
//
//  Created by vignesh on 9/17/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class BuffetCell: UICollectionViewCell {
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var titlelabel: UILabel!
    
    var dessertItems : Dessert! {
        
        didSet {
            updateData()
        }
    }
    func updateData() {
        
        titlelabel.text = dessertItems.title
        foodImageView.image = dessertItems.image
    }
    
    override func layoutSubviews() {
         super.layoutSubviews()
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
    
    
}
