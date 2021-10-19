//
//  ViewController.swift
//  calculatorApp
//
//  Created by dahma alwani on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var startView = true
    func addNumber(number:String) {
        var textNumber = String (resultLabel.text!)
        if startView {
            textNumber = ""
            startView = false
        }
        textNumber = textNumber + number
        resultLabel.text = textNumber
    }
    //numbers//
    @IBAction func zero(_ sender: Any) {
        addNumber(number: "0")
    }
    @IBAction func decimal(_ sender: Any) {
        addNumber(number: ".")
    }
    @IBAction func num1 (_ sender: Any) {
        addNumber(number: "1")
    }
    @IBAction func num2 (_ sender: Any) {
        addNumber(number: "2")
    }
    @IBAction func num3 (_ sender: Any) {
        addNumber(number: "3")
    }
    @IBAction func num4 (_ sender: Any) {
        addNumber(number: "4")
    }
    @IBAction func num5 (_ sender: Any) {
        addNumber(number: "5")
    }
    @IBAction func num6 (_ sender: Any) {
        addNumber(number: "6")
    }
    @IBAction func num7 (_ sender: Any) {
        addNumber(number: "7")
    }
    @IBAction func num8 (_ sender: Any) {
        addNumber(number: "8")
    }
    @IBAction func num9 (_ sender: Any) {
        addNumber(number: "9")
    }
    //calculation//
    var operation = "+"
    var number1:Double?
    @IBAction func multipiy(_ sender: Any) {
        operation = "*"
        number1 = Double(resultLabel.text!)
        startView = true
    }
    @IBAction func divid(_ sender: Any) {
        operation = "/"
        number1 = Double(resultLabel.text!)
        startView = true
    }
    @IBAction func subtract(_ sender: Any) {
             operation = "-"
        number1 = Double(resultLabel.text!)
             startView = true
         }
    @IBAction func summe(_ sender: Any) {
             operation = "+"
             number1 = Double(resultLabel.text!)
             startView = true
         }
    @IBAction func clear(_ sender: Any) {
             resultLabel.text = "0"
             startView = true
       }
    //result//
    @IBAction func equal(_ sender: Any) {
             let number2 = Double(resultLabel.text!)
             var result:Double?
             switch operation {
             case "*":
                 result = number1! * number2!
             case "/":
                 result = number1! / number2!
             case "-":
                 result = number1! - number2!
             case "+":
                 result = number1! + number2!
             default:
                 result = 0.0
             }
             resultLabel.text = String(result!)
             startView = true
            
                 }

             }
