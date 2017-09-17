//
//  ViewController.swift
//  BuffetMenus
//
//  Created by vignesh on 9/17/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class HomeBuffetController: UIViewController {

    @IBOutlet weak var pageImageView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    var categories = ["Main Course","Dessert"]
    
    var timer : Timer!
    var updateCount: Int!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Helvetica Neue", size: 20) ?? "in appropriate font"]
        
       
        
        
        updateCount = 0
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(HomeBuffetController.updateTimer), userInfo: nil, repeats: true)
    }
    
    internal func updateTimer() {
        
        if (updateCount <= 2) {
            pageControl.currentPage = updateCount
            pageImageView.image = UIImage(named: String("t\(updateCount + 1).jpg"))
            updateCount = updateCount + 1
        }else {
            updateCount = 0
        }
    }

}

extension HomeBuffetController : UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! TableCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerTitle = view as? UITableViewHeaderFooterView {
            headerTitle.textLabel?.textColor = UIColor.red
            headerTitle.textLabel?.font = UIFont.init(name: "Copperplate", size: 20)
        }
    }
    
}

