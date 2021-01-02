//
//  SecondViewController.swift
//  Tinkal_201833879
//
//  Created by english on 2019-12-11.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
     var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
 nameLbl.text=userName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
