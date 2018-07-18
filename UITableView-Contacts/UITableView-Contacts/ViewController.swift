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
    
    let twoDimensionalArray = [
    ["Alex","Bill","Big Willie Smith","Jane","Tom","Stuart","Pardes","Big Mike","Elvis","FishesKC"],
    ["Cameron","Carl","Chris","Christina","Carlton"],
    ["David","Donald","Daniel","Danielle"],
    ["Elvis","Edward","Ellie"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        navigationItem.title = "Contacts" // Displays Navigation Item on Load-up
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count  // Create dynamically
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? { // Creates Headers above each section
        let label = UILabel()
        label.text = "Sub-Section Header" // Can this be rendered dynamically?
        label.backgroundColor = UIColor.lightGray
        return label
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return twoDimensionalArray[section].count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let name = twoDimensionalArray[indexPath.section][indexPath.row] // I.e. section 0 row 0 returns contact one
        
        cell.textLabel?.text = name
        cell.textLabel?.text = "\(name) Section: \(indexPath.section) Row: \(indexPath.row)"
        
        return cell
        
    }
    
}
