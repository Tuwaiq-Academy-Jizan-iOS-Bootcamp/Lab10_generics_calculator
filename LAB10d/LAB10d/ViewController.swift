//
//  ViewController.swift
//  LAB10d
//
//  Created by Ehab Hakami on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet var calculatorButtons: [UIButton]!
    
    @IBOutlet weak var zeroStayl: UIButton!
    // Variables I need for the logic
        var firstNumber = 0
        var secondNumber = 0
        var mathOperation = ""
        var resetLabel = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for btn in calculatorButtons {
                    btn.layer.cornerRadius = btn.frame.size.height / 2
                    btn.clipsToBounds = true
                    btn.layer.masksToBounds = true
                }
        zeroStayl.layer.cornerRadius = 30
        zeroStayl.layer.masksToBounds = true
    }
    @IBAction func pressNumber(_ sender: UIButton) {
            
            if resetLabel {
                screenLabel.text = ""
            }
            screenLabel.text! = screenLabel.text! + String(sender.tag)
            resetLabel = false
            
            
        }
        @IBAction func mathOperation(_ sender: UIButton) {
            
            switch sender.tag {
            case 20:
                firstNumber = Int(screenLabel.text!)!
                mathOperation = "/"
                resetLabel = true
            case 21:
                firstNumber = Int(screenLabel.text!)!
                mathOperation = "*"
                resetLabel = true
            case 22:
                firstNumber = Int(screenLabel.text!)!
                mathOperation = "-"
                resetLabel = true
           case 23:
                firstNumber = Int(screenLabel.text!)!
                mathOperation = "+"
                resetLabel = true
            default:
                screenLabel.text = "Error"
            }
            
            
        }
        @IBAction func result(_ sender: UIButton) {
            
            secondNumber = Int(screenLabel.text!)!
            
            if mathOperation == "/"{
                screenLabel.text = String(divideBy(number1: firstNumber, number2: secondNumber))
                //screenLabel.text = "\(divideBy(number1: firstNumber, number2: secondNumber))"
            }
            if mathOperation == "*" {
                screenLabel.text = String(multiplyBy(number1: firstNumber, number2: secondNumber))
            }
            if mathOperation == "-" {
                screenLabel.text = String(substractBy(number1: firstNumber, number2: secondNumber))
            }
            if mathOperation == "+" {
                screenLabel.text = String(addBy(number1: firstNumber, number2: secondNumber))
            }
        }
        @IBAction func clearAll(_ sender: Any) {
            screenLabel.text = "0"
            firstNumber = 0
            secondNumber = 0
            resetLabel = true
        }
        
        // Methode for Operation
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

