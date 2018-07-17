//
//  ViewController.swift
//  UITableView-Contacts
//
//  Created by dan on 17/07/2018.
//  Copyright © 2018 Thomas Lynch. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellID = "cellID"
    let names = ["Alex","Bill","Big Willie Smith","Jane","Tom","Stuart","Pardes","Big Mike","Elvis","FishesKC"]
    let anothernames = ["Adam","Kevin","Wayne","Big Shaq"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        navigationItem.title = "Fight me you prick" // Displays Navigation Item on Load-up
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3  // Create dynamically
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? { // Creates Headers above each section
        let label = UILabel()
        label.text = "Y'know"
        label.backgroundColor = UIColor.lightGray
        return label
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return names.count
        }
        return anothernames.count   // refactor this to count the length of the input array
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let name = self.names[indexPath.row]
        cell.textLabel?.text = name
        cell.textLabel?.text = "\(name) Section: \(indexPath.section) Row: \(indexPath.row)"
        
        return cell
        
    }
    
    
}
