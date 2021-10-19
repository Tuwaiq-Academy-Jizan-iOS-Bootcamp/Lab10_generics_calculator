//
//  ViewController.swift
//  generics
//
//  Created by Ahmad Barqi on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorDisplay: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var newOperation = true
    func AddNumbeToInput(number: String) {
        
  var textNumber = (calculatorDisplay.text!)
        if newOperation{
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        calculatorDisplay.text = textNumber
        
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        calculatorDisplay.text = "0"
        newOperation = true
    
        
    }
    
    var op = "+"
    var number1 : Double?
    @IBAction func divideButton(_ sender: Any) {
        op = "/"
        number1 = Double(calculatorDisplay.text!)
        newOperation = true
        
        
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        op = "*"
        number1 = Double(calculatorDisplay.text!)
        newOperation = true
        
    }
    @IBAction func minusButton(_ sender: Any) {
        op = "-"
        number1 = Double(calculatorDisplay.text!)
        newOperation = true
    }
    @IBAction func plusButton(_ sender: Any) {
        op = "+"
        number1 = Double(calculatorDisplay.text!)
        newOperation = true
    }
    
    @IBAction func equalButton(_ sender: Any) {
        
        let number2 = Double(calculatorDisplay.text!)
        var result: Double?
        switch op {
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        case "+":
            result = number1! + number2!
        case "-":
            result = number1! - number2!
        default:
            result = 0.0
            
        }
        calculatorDisplay.text = String(result!)
        newOperation = true
        
        
    }
    
    @IBAction func decimallButton(_ sender: Any) {
        
        AddNumbeToInput(number: ".")
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        AddNumbeToInput(number: "0")
    }
    
    @IBAction func oneButton(_ sender: Any) {
       AddNumbeToInput(number: "1")
    }
    
    

    @IBAction func twoButton(_ sender: Any) {
        AddNumbeToInput(number: "2")
    }
    
    @IBAction func threeButton(_ sender: Any) {
        AddNumbeToInput(number: "3")
    }
   
    @IBAction func fourButton(_ sender: Any) {
        AddNumbeToInput(number: "4")
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        AddNumbeToInput(number: "5")
    }
    
    @IBAction func sixButton(_ sender: Any) {
        AddNumbeToInput(number: "6")
    }
    
    @IBAction func sivenButton(_ sender: Any) {
      AddNumbeToInput(number: "7")
    }
    
    @IBAction func eightButton(_ sender: Any) {
       AddNumbeToInput(number: "8")
    }
    
    @IBAction func nineButoon(_ sender: Any) {
     AddNumbeToInput(number: "9")
    }
    
    
    
    
    
    
}

