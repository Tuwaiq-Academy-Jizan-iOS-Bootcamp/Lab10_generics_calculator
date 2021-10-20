//
//  ViewController.swift
//  ZHOOR L10
//
//  Created by زهور حسين on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var firstNumber = ""
    var secondNumber = ""
    var newOperation = false
    func AddNumber(number:String){
        if newOperation {
            secondNumber += number
            lable.text = secondNumber
        }else {
            firstNumber += number
            lable.text = firstNumber
        }
    }
    @IBAction func Bu0(_ sender: Any) {
        print(0)
        AddNumber(number: "0")
        
    }
    @IBAction func Dot(_ sender: Any) {
        AddNumber(number: ".")
        
    }
    @IBAction func Bu1(_ sender: Any) {
        AddNumber(number: "1")
        
    }
    @IBAction func Bu2(_ sender: Any) {
        AddNumber(number: "2")
        
    }
    @IBAction func Bu3(_ sender: Any) {
        AddNumber(number: "3")
        
    }
    @IBAction func Bu4(_ sender: Any) {
        AddNumber(number: "4")
        
    }
    @IBAction func Bu5(_ sender: Any) {
        AddNumber(number: "5")
        
    }
    @IBAction func BU6(_ sender: Any) {
        AddNumber(number: "6")
        
    }
    
    @IBAction func Bu7(_ sender: Any) {
        AddNumber(number: "7")
    }
    
    @IBAction func Bu8(_ sender: Any) {
        AddNumber(number: "8")
        
    }
    @IBAction func Bu9(_ sender: Any) {
        AddNumber(number: "9")
        
    }
    var op = ""
    
    @IBAction func Bumuilt(_ sender: Any) {
        op = "*"
        newOperation = true
    }
    @IBAction func BuDiv(_ sender: Any) {
        op = "/"
        newOperation = true
    }
    
    @IBAction func Bumin(_ sender: Any) {
        op = "-"
        newOperation = true
    }
    
    @IBAction func BuBls(_ sender: Any) {
        op = "+"
        newOperation = true
    }
    @IBAction func BuC(_ sender: Any) {
        lable.text = "0"
        firstNumber = ""
        secondNumber = ""
        newOperation = false
    }
    @IBAction func BuEqual(_ sender: Any) {
        var result:Double?
        switch op {
        case "*":
            result = Double(firstNumber)! * Double(secondNumber)!
        case "/":
            result = Double(firstNumber)! / Double(secondNumber)!
        case "-":
            result = Double(firstNumber)! - Double(secondNumber)!
        case "+":
            result = Double(firstNumber)! + Double(secondNumber)!
        default:
            result = 0.0
        }
        firstNumber = String(result!)
        secondNumber = ""
        op = ""
        lable.text = String(result!)
        newOperation = false
        
    }
}


