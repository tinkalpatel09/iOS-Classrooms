//
//  ViewController.swift
//  registraion
//
//  Created by english on 2019-10-23.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var textuser: UITextField!
    
    var name = ""
    var email = ""
    
    @IBAction func submitbtm(_ sender: UIButton) {
        
        name = textuser.text!
        email = txtEmail.text!
        
        performSegue(withIdentifier: "secvc", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secvc"{
            let destination = segue.destination as! secViewController
            destination.username=name
            destination.email=email
            
    }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


