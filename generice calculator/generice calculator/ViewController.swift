//
//  ViewController.swift
//  generice calculator
//
//  Created by موسى مسملي on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {
    var secondNumber:Double = 0;
    var firstNumber : Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var lebal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func numbers(_ sender:UIButton) {
        if performingMath == true {
            lebal.text = String(sender.tag-1)
            secondNumber = Double(lebal.text!)!
            print("Second Number?",secondNumber)
        } else {
            lebal.text = lebal.text! + String(sender.tag-1)
            firstNumber = Double(lebal.text!)!
            print("First Number?",firstNumber)
        }
    }
    
    @IBAction func button(_ sender: UIButton) {
        if sender.tag == 11{
            print("AC>")
            lebal.text = ""
            firstNumber = 0;
            secondNumber = 0;
            operation = 0;
            performingMath = false
        }else
        if (sender.tag == 12) {
            operation = sender.tag
            performingMath = true
        }else if (sender . tag == 13) {
            operation = sender.tag
            performingMath = true
        }else if (sender . tag == 14 ){
            operation = sender.tag
            performingMath = true
        } else if (sender . tag == 15 ) {
            operation = sender.tag
            performingMath = true
        } else if ( sender.tag == 16 ){
            print("EQUAL??")
            if operation == 12 {
                lebal.text = String(firstNumber / secondNumber )
            } else if operation == 13{
                lebal.text = String(firstNumber * secondNumber )
                
            }else if operation == 14 {
                lebal.text = String(firstNumber - secondNumber )
            }else if operation == 15{
                lebal.text = String(firstNumber + secondNumber )
            }
            firstNumber = Double(lebal.text!)!
            secondNumber = 0.0
            performingMath = false
            operation = 0
        }
        
    }
}

