//
//  ViewController.swift
//  Cal
//
//  Created by Hanan Somily on 19/10/2021.
//

import UIKit

class ViewController: UIViewController {
var number1 = 0
var number2 = 0
var operation = ""
var reseltValue = true
    
    @IBOutlet weak var screen: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func number(_ sender: UIButton) {
        if reseltValue == true {
            screen.text = "" }
        screen.text = screen.text! + String(sender.tag)
        reseltValue = false
        }
    @IBAction func mathOperation(_ sender: UIButton) {
        switch sender.tag {
        case 11 : number1 = Int(screen.text!)!
            operation = "/"
            reseltValue = true
        case 12 :number1 = Int(screen.text!)!
            operation = "*"
            reseltValue = true
        case 13 :number1 = Int(screen.text!)!
            operation = "+"
            reseltValue = true
        case 14 :number1 = Int(screen.text!)!
            operation = "-"
            reseltValue = true
        case 10 :
            screen.text = "0"
            number1 = 0
            number2 = 0
            reseltValue = true
        default :
            screen.text = "Error"
        }
        
    }
    
    @IBAction func equal(_ sender: UIButton) {
        number2 = Int(screen.text!)!
        if operation == "/"{
            screen.text = String(number1/number2)
            reseltValue = true
        }
        if operation == "*"{
            screen.text = String(number1*number2)
            reseltValue = true
        }
        if operation == "+"{
            screen.text = String(number1+number2)
            reseltValue = true
        }
        if operation == "-"{
            screen.text = String(number1-number2)
            reseltValue = true
        }
      
    }
    
}

