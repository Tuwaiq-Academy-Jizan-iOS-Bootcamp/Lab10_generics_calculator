//
//  ViewController.swift
//  Amal lab10
//
//  Created by Amal Jeli on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    var newOpertion = true
    func AddNumber(number:String) {
        var textNumber = String(lable.text!)
        if newOpertion {
          textNumber = ""
            newOpertion = false
        }
    
        textNumber = textNumber + number
        (lable.text) = textNumber
        
        
    }
    @IBAction func Nu0(_ sender: Any) {
        AddNumber(number: "0")
    
    }
    @IBAction func Dot(_ sender: Any) {
        
    AddNumber(number: ".")
    
    }
    
    
    @IBAction func Nu1(_ sender: Any) {
        
        AddNumber(number: "1")
        
    }
    
    
    @IBAction func Nu2(_ sender: Any) {
        
        AddNumber(number: "2")
        
    }
    
    
    @IBAction func Nu3(_ sender: Any) {
        
        AddNumber(number: "3")
    }
    
    
    @IBAction func Nu4(_ sender: Any) {
        
        AddNumber(number: "4")
    }
    
    
    
    @IBAction func Nu5(_ sender: Any) {
        
        AddNumber(number: "5")
        
    }
    
    @IBAction func Nu6(_ sender: Any) {
        
        AddNumber(number: "6")
        
    }
    

    @IBAction func Nu7(_ sender: Any) {
        
        AddNumber(number: "7")
    }
    
    
    @IBAction func Nu8(_ sender: Any) {
        
        AddNumber(number: "8")
        
    }
    
    
    @IBAction func Nu9(_ sender: Any) {
        
        AddNumber(number: "9")
        
    }
   var op = "+"
   var number1:Double?
    
    
    @IBAction func Numuilt(_ sender: Any) {
        
        op = "*"
        number1 = Double(lable.text!)
        newOpertion = true
        
    }
    
    
    @IBAction func NuDiv(_ sender: Any) {
        op = "/"
        number1 = Double(lable.text!)
        newOpertion = true
        
        
    }
    
    
    
    @IBAction func Numin(_ sender: Any) {
        op = "-"
        number1 = Double(lable.text!)
        newOpertion = true
        
        
        
        
        
    }
    
    
    @IBAction func NuBls(_ sender: Any) {
        
        op = "+"
        number1 = Double(lable.text!)
        newOpertion = true
        
    }
    
  
    
    @IBAction func NuC(_ sender: Any) {
        (lable.text) = "0"
        newOpertion = true
        
    }
    
    
    @IBAction func NuEqual(_ sender: Any) {
            let number2 = Double(lable.text!)
            var result:Double?
            switch op {
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
            lable.text = String(result!)
            newOpertion = true
        }
        
        
    
        
        
    }
    



