//
//  ViewController.swift
//  clactor
//
//  Created by Yasir Hakami on 19/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screen: UILabel!
    var number1 = 0
    var number = 0
    var mathOr = ""
    var eqal = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func allNum(_ sender: UIButton) {
        if eqal {
            screen.text = ""
        }
        screen.text! = screen.text! + String(sender.tag)
        eqal = false
    }
    @IBAction func opration(_ sender: UIButton) {
        switch sender.tag {
        case 10:
            number1 = Int(screen.text!)!
            mathOr = "/"
            eqal = true
        case 11:
            number1 = Int(screen.text!)!
            mathOr = "/"
            eqal = true
        case 12 :
            number1 = Int(screen.text!)!
            mathOr = "-"
            eqal = true
            
        default:
            screen.text = "error"
        }
        
    }
    @IBAction func result(_ sender: Any) {
        number = Int(screen.text!)!
        if mathOr == "/"{
            screen.text = String(divideBy(number1: number1, number2: number))
        }
        if mathOr == "*"{
            screen.text = String(multiplyBy(number1: number1, number2: number))
        }
        
        if mathOr == "-"{
            screen.text = String(substractBy(number1: number1, number2: number))
        }
        if mathOr == "+"{
            screen.text = String(addBy(number1: number1, number2: number))
        }
        
    }
    
    @IBAction func ruslet(_ sender: Any) {
        screen.text = "0"
        number1 = 0
        number = 0
        eqal = true
    }
    
    
    
    
    
    
    func divideBy(number1: Int, number2: Int) -> Int {
        return number1 / number2
    }
    func multiplyBy(number1: Int, number2: Int) -> Int {
        return number1 * number2
    }
    func substractBy(number1: Int, number2: Int) -> Int {
        return number1 - number2
    }
    func addBy(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
}

