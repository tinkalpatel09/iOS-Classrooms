//
//  ViewController.swift
//  Displayimage
//
//  Created by english on 2019-10-16.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let arr = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBAction func Evennumber(_ sender: UIButton) {
        evennumber()
        
    }
    
    @IBAction func oddnumber(_ sender: UIButton) {
         oddnumber()
    }
    func oddnumber(){
         let index1 : Int = Int (arc4random_uniform(6))
         let index3 : Int = Int (arc4random_uniform(6))
         let index5 : Int = Int (arc4random_uniform(6))
        
         img1.image = UIImage(named: arr[index1])
         img3.image = UIImage(named: arr[index3])
         img5.image = UIImage(named: arr[index5])
    }
    
    func evennumber() {
       
        let index2 :Int = Int(arc4random_uniform(6))
       
        let index4 :Int = Int(arc4random_uniform(6))
       
        let index6 :Int = Int(arc4random_uniform(6))
       
       
        img2.image = UIImage(named: arr[index2])
        img4.image = UIImage(named: arr[index4])
       
        img6.image = UIImage(named: arr[index6])
        
    }
}

