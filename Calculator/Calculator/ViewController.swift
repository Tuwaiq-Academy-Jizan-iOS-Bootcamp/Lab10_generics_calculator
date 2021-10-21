//
//  ViewController.swift
//  Calculator
//
//  Created by Afrah Omar on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    var startView = true
    func viewResult(number:String){
        var textNumber = String (resultLabel.text!)
        if startView {
            textNumber = ""
            startView = false
        }
        textNumber = textNumber + number
        resultLabel.text = textNumber
    }
    
    //numbers//
 
    @IBAction func button1(_ sender: UIButton) {
        viewResult(number: "1")
    }
    @IBAction func button2(_ sender: UIButton) {
        viewResult(number: "2")
    }
    @IBAction func button3(_ sender: UIButton) {
        viewResult(number: "3")
    }
    @IBAction func button4(_ sender: UIButton) {
        viewResult(number: "4")
    }
    @IBAction func button5(_ sender: UIButton) {
        viewResult(number: "5")
    }
    @IBAction func button6(_ sender: UIButton) {
        viewResult(number: "6")
    }
    @IBAction func button7(_ sender: UIButton) {
        viewResult(number: "7")
    }
    @IBAction func button8(_ sender: UIButton) {
        viewResult(number: "8")
    }
    @IBAction func button9(_ sender: UIButton) {
        viewResult(number: "9")
    }
    @IBAction func button0(_ sender: UIButton) {
        viewResult(number: "0")
    }
    @IBAction func decimal(_ sender: Any) {
        viewResult(number: ".")
    }
    
    //calculation//
    
    var Operator = "+"
    var number1:Double?
  
    @IBAction func buttonPlus(_ sender: UIButton){
         Operator = "+"
        number1 = Double(resultLabel.text!)
            startView = true
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        Operator = "-"
       number1 = Double(resultLabel.text!)
           startView = true
    }
    @IBAction func buttondivid(_ sender: Any) {
        Operator = "/"
       number1 = Double(resultLabel.text!)
           startView = true
    }
    
    @IBAction func buttonmultipiy(_ sender: Any) {
        Operator = "*"
       number1 = Double(resultLabel.text!)
           startView = true
    }

    @IBAction func clear(_ sender: Any) {
        Operator = "c"
       number1 = Double(resultLabel.text!)
           startView = true
    }
    
    //result//
    
    @IBAction func equal(_ sender: Any) {
let number2 = Double(resultLabel.text!)
var result:Double?
switch Operator {
 case "+":
     result = number1! + number2!
 case "-":
     result = number1! - number2!
 case "*":
     result = number1! * number2!
 case "/":
     result = number1! / number2!
 default:
     result = 0.0
 }
 
 resultLabel.text = String(result!)
 startView = true
    }
    
}


