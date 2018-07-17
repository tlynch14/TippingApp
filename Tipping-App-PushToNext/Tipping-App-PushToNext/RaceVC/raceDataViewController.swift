//
//  raceDataViewController.swift
//  Tipping-App-PushToNext
//
//  Created by dan on 17/07/2018.
//  Copyright © 2018 Thomas Lynch. All rights reserved.
//

import UIKit

class raceDataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let raceData = [
    ["Germany","France","Spain","Italy","Sweden"],
    ["Thailand","Singapore","China","Philli","Japan"],
    ["Zanzibar","Egypt","Kenya","Nigeria","Morocco"],
    ["Canada","USA","Mexico","Jamaica","Dominica"],
    ["Argentina","Peru","Colombia","Brazil","Chile"],
    ["Australia","New Zealand","Fiji","Tonga"],
    ]
    
    var raceMeetingDataIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        let nib = UINib(nibName: "raceDataCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "raceDataCell")
        // Do any additional setup after loading the view.
    }
    
//     customInit
    func customInit(raceMeetingDataIndex: Int, title: String) {
        self.raceMeetingDataIndex = raceMeetingDataIndex
        self.title = title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raceData[raceMeetingDataIndex].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "raceDataCell", for: indexPath) as!raceDataCell
        cell.textLabel?.text = raceData[raceMeetingDataIndex][indexPath.row]
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
