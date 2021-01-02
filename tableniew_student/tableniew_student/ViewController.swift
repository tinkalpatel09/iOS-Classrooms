//
//  ViewController.swift
//  tableniew_student
//
//  Created by english on 2019-11-06.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    var obj = Person(nameInit : "tinkal" ,idInit : 1)
 
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        //return fruits.count
    }
    
    // var  fruits = ["apple","mango","banana","graps","lichi"]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        
        
        cell.textLabel?.text = String(indexPath.row + 1)
        //  cell.textLabel?.text = fruits[indexPath.row ]
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

