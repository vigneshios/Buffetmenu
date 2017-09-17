//
//  dessert.swift
//  BuffetMenus
//
//  Created by vignesh on 9/17/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import Foundation
import UIKit

class Dessert {
    
    var title : String!
    var image : UIImage!
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
    
  static func dessertItems()-> [Dessert] {
        
        return [
            Dessert(title: "Molten Cake", image: UIImage(named: "d1")!),
            Dessert(title: "Peanut Cake", image: UIImage(named: "d2")!),
            Dessert(title: "Raspberry Tart", image: UIImage(named: "d3")!),
            Dessert(title: "brownies", image: UIImage(named: "d4")!),
            Dessert(title: "pasteries", image: UIImage(named: "d5")!),
            Dessert(title: "LoveCakes", image: UIImage(named: "d6")!),
            
        ]
    }
    
}
