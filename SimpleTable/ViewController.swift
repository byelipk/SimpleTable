//
//  ViewController.swift
//  SimpleTable
//
//  Created by Patrick White on 11/21/16.
//  Copyright © 2016 Patrick White. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let name = restaurantNames[indexPath.row]
        let nameMod = name.lowercased()
                          .replacingOccurrences(of: " And Deli", with: "")
                          .replacingOccurrences(of: " and ", with: "")
                          .replacingOccurrences(of: " ", with: "")
                          .replacingOccurrences(of: "'", with: "")
                          .replacingOccurrences(of: "&", with: "")
        
        
        print(nameMod)
        
        // Modify cell
        cell.textLabel?.text = name
        cell.imageView?.image = UIImage(named: nameMod)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

