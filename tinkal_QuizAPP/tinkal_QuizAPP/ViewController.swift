//
//  ViewController.swift
//  tinkal_QuizAPP
//
//  Created by Tinkal on 2019-12-05.
//  Copyright © 2019 Tinkal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var buttons: UIView!
    
    var allques = Storage()
    var answer: Bool = false
    var progress =  0
    var number:Int = 0
    var scoree:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = allques.questions[number].question
        progressbar.progress = Float(progressbar.progress) + 0.05
        
    }
    
    
    
    @IBAction func answer(_ sender: UIButton) {
        if sender.tag == 1{
            answer = true
        }else if sender.tag == 2{
            answer = false
        }
        check()
        nxtques()
        progressbar.progress = Float(progressbar.progress) + 0.05
    }
    
    
    
    func check(){
        if answer == allques.questions[number].answer{
            update()
            
            if number < 19{
            let alert = UIAlertController(title: "Right Answer", message: "", preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            
            // change to desired number of seconds (in this case 5 seconds)
            let when = DispatchTime.now() + 0.4
            DispatchQueue.main.asyncAfter(deadline: when){
                // your code with delay
                alert.dismiss(animated: true, completion: nil)
            }
            }
        }
        else{
            if number < 19{
            let alert = UIAlertController(title: "wrong Answer", message: "", preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            
            // change to desired number of seconds (in this case 5 seconds)
            let when = DispatchTime.now() + 0.4
            DispatchQueue.main.asyncAfter(deadline: when){
                // your code with delay
                alert.dismiss(animated: true, completion: nil)
            }
            }
        }
        count.text = "\(number + 2)/20"
    }
    
    func update(){
        scoree += 1
        score.text = "Score : \(scoree)"
        
    }
    
    
    
    
    func restart(){
        number = 0
        count.text = "\(number + 2)/20"
        scoree = 0
        score.text = "Score : \(scoree)"
        question.text = allques.questions[number].question
        buttons.isHidden = false
        progressbar.progress = 0.05
    }
    
    
    
    
    
    func nxtques(){
        if number < 19{
            number = number + 1
            question.text = allques.questions[number].question
        }
        else if number >= 19{
            question.text = "Quiz Time Over"
            buttons.isHidden = true
            
            
            let alertController = UIAlertController(title: "THANKS FOR PLAYING", message: "", preferredStyle: .alert)
            
            // Create OK button
            let OKAction = UIAlertAction(title: "EXIT", style: .default) { (action:UIAlertAction!) in
                
                exit(0)
                
            }
            alertController.addAction(OKAction)
            
            // Create Cancel button
            let cancelAction = UIAlertAction(title: "RESTART", style: .cancel) { (action:UIAlertAction!) in
                self.restart()
                
            }
            alertController.addAction(cancelAction)
            
            // Present Dialog message
            self.present(alertController, animated: true, completion:nil)
            
        }
    }
    
    
    
    
    
    
}
