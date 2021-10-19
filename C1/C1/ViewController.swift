//
//  ViewController.swift
//  C1
//
//  Created by layla hakami on 12/03/1443 AH.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var ShowNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
                   }
 
var newOperation = true
    func AddNumerToInput(number:String){
        var textNumber = String (ShowNumber.text!)
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        ShowNumber.text = textNumber
    }
    
    
    @IBAction func Bu0(_ sender: Any) {
    AddNumerToInput(number: "0")
        
        
    }
    
    @IBAction func BuDit(_ sender: Any) {
        AddNumerToInput(number: ".")
    }
       
            
   
    @IBAction func BU1(_ sender: Any) { AddNumerToInput(number: "1")
    }
    
    @IBAction func BU2(_ sender: Any) {
        AddNumerToInput(number: "2")
    }
    
    
    @IBAction func BU3(_ sender: Any) {
        AddNumerToInput(number: "3")
    }
    
    @IBAction func BU4(_ sender: Any) {
        AddNumerToInput(number: "4")
    }
    
    
    
    @IBAction func BU5(_ sender: Any) {
        AddNumerToInput(number: "5")
    }
    
    
    @IBAction func BU6(_ sender: Any) {
        AddNumerToInput(number: "6")
    }
    
    @IBAction func BU7(_ sender: Any) {
        AddNumerToInput(number: "7")
    }
    
    @IBAction func BU8(_ sender: Any) {
        AddNumerToInput(number: "8")
    }
    
    @IBAction func BU9(_ sender: Any) {
        AddNumerToInput(number: "9")
    }
    var op = "+"
    var number1:Double?
    @IBAction func multip(_ sender: Any) {
        op = "*"
        number1 = Double(ShowNumber.text!)
        
        newOperation = true
    }
    
    
    
    @IBAction func DIV(_ sender: Any) {
        op = "/"
        number1 = Double(ShowNumber.text!)
        
        newOperation = true
        
    }
    
    
    @IBAction func SUB(_ sender: Any) {
        op = "-"
        number1 = Double(ShowNumber.text!)
        
        newOperation = true
        
    }
    
    
    
    @IBAction func SUM(_ sender: Any) {
        op = "+"
        number1 = Double(ShowNumber.text!)
        
        newOperation = true
        
    }
    
    
    @IBAction func AC(_ sender: Any) {
        ShowNumber.text = "0"
    newOperation = true
    }
    
    @IBAction func Equal(_ sender: Any) {
        let number2 = Double(ShowNumber.text!)
        var result:Double?
        switch op{
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        case "-":
            result = number1! - number2!
        case "+":
            result = number1! + number2!
        default:
            result = 0
        }
        ShowNumber.text = String(result!)
        newOperation = true
    }
    
}
     
