//
//  ViewController.swift
//  Tipping-App-PushToNext
//
//  Created by dan on 17/07/2018.
//  Copyright © 2018 Thomas Lynch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var raceMeetingIndex = ["Aintree","Ascot", "Bath","Cheltenham","Chester","Kempton Park","Newbury","Newmarket","York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raceMeetingIndex.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "raceDataCell", for: indexPath)
        cell.textLabel?.text = raceMeetingIndex[indexPath.row]
        return cell 
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let RaceDataViewController = raceDataViewController()
        RaceDataViewController.customInit(raceMeetingDataIndex: indexPath.row, title: raceMeetingIndex[indexPath.row])
        self.navigationController?.pushViewController(RaceDataViewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

