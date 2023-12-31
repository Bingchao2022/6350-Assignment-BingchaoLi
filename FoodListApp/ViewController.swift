//
//  ViewController.swift
//  FoodListApp
//
//  Created by 李炳超 on 10/4/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imageNames = ["hot pot", "pizza", "steak", "taco",]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        cell.imageView?.image = UIImage(named: imageNames[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        
        return cell
    }
    
}

