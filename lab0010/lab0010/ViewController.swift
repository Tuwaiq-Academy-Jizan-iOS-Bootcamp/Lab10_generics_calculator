//
//  ViewController.swift
//  lab0010
//
//  Created by grand ahmad on 13/03/1443 AH.
//

import UIKit

var firstNumber = ""
var operation = ""
var secondNumber = ""
var haveResult = false
var resultNumber = ""
var numberAfterResult = ""

class ViewController: UIViewController {

    
    @IBAction func add(_ sender: Any) {
        operation = "+"
    }
    
    @IBAction func divid(_ sender: Any) {
        operation = "%"
    }
    
    @IBAction func mult(_ sender: Any) {
        operation = "x"
    }
    
    @IBAction func sum(_ sender: Any) {
        operation = "-"
    }
    
    @IBAction func equal(_ sender: Any) {
        resultNumber = String(doOperation())
        let numberArr = resultNumber.components(separatedBy: ".")
        print(numberArr)
        if numberArr[1] == "0" {
            numberOnScreen.text = numberArr[0]
        }
        else {
            numberOnScreen.text = resultNumber
        }
        numberAfterResult = ""
    }
    
    @IBOutlet var numberOnScreen: UILabel!
    
    
    
    @IBOutlet var calculatorButtons: [UIButton]!
    
    @IBAction func pressedNumber(_ sender: UIButton) {
        if operation == "" {
            firstNumber += String(sender.tag)
            numberOnScreen.text = firstNumber
        }
        
        else if operation != "" && !haveResult {
            secondNumber += String(sender.tag)
            numberOnScreen.text = secondNumber
        }
        else if operation != "" && haveResult {
            numberAfterResult += String(sender.tag)
            numberOnScreen.text = numberAfterResult
        }
    }
    
    
    @IBAction func clear(_ sender: Any) {
        firstNumber = ""
        operation = ""
        secondNumber = ""
       haveResult = false
        resultNumber = ""
        numberAfterResult = ""
        numberOnScreen.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        


}
    func doOperation() -> Double {
        if operation == "+" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! + Double(secondNumber)!
            }
            else {
                return Double(resultNumber)! + Double(numberAfterResult)!
            }
        }
            else if operation == "-" {
                if !haveResult {
                    haveResult = true
                    return Double(firstNumber)! - Double(secondNumber)!
                }
                else {
                    return Double(resultNumber)! - Double(numberAfterResult)!
                }
            }
            else if operation == "x" {
                if !haveResult {
                    haveResult = true
                    return Double(firstNumber)! * Double(secondNumber)!
                }
                else {
                    return Double(resultNumber)! * Double(numberAfterResult)!
                }
            }
        
            else if operation == "/" {
                if !haveResult {
                    haveResult = true
                    return Double(firstNumber)! / Double(secondNumber)!
                }
                else {
                    return Double(resultNumber)! / Double(numberAfterResult)!
                }
            }
        
        
        return 0
}
    
}
