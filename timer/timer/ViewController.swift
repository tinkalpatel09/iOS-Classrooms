//
//  ViewController.swift
//  timer
//
//  Created by english on 2019-10-30.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var timer = Timer()
    var time = 210
    @objc func decreaseTime(){
        if time > 0 {
            time -= 1
            timerlbl.text = String(time)
            
        }
    }

  
    @IBOutlet weak var timerlbl: UILabel!
    
    @IBAction func Play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(decreaseTime), userInfo: nil, repeats: true)
      
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func plus10(_ sender: Any) {
        timerlbl.text = String(Int(timerlbl.text!)!+10);
        time = Int(timerlbl.text!)!
    }
    
    @IBAction func minus10(_ sender: Any) {
        timerlbl.text = String(Int(timerlbl.text!)!-10);
        time = Int(timerlbl.text!)!
    }
    @IBAction func Reset(_ sender: Any) {
        timer.invalidate()
        time = 210
        timerlbl.text = ("210")
        
      
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

