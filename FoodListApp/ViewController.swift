//
//  ViewController.swift
//  FoodListApp
//
//  Created by 李炳超 on 10/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imageNames = ["hot pot", "pizza", "steak", "taco"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageTableViewCell
        cell.customImageView.image = UIImage(named: imageNames[indexPath.row])
        cell.customLabel.text = imageNames[indexPath.row]
        
        return cell;
    }

}

