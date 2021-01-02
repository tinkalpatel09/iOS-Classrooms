//
//  ViewController.swift
//  Tinkal_201833879
//
//  Created by english on 2019-12-11.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var name: UIView!
     var fname = ""
    @IBOutlet weak var nameText: UITextField!
    @IBAction func loginbutton(_ sender: Any) {
        if (nameText.text?.isEmpty)!{
            nameText.text! = "Enter here first"
            
        }
        else{
            
            name = nameText.text!
            performSegue(withIdentifier: "click", sender:nil)
        }
        performSegue(withIdentifier:"SecVc", sender: nil)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "SecVc"{
            let destination = segue.destination as! SecondViewController
            destination.userName=name
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        
        nameText.text = name
    }
   
   
    @IBOutlet weak var login: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

