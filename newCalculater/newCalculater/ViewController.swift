//
//  ViewController.swift
//  newCalculater
//
//  Created by Arwa Alattas on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
   //variable i need for the logic
    var FirstNumber = 0.0
    var scandNumber = 0.0
    var mathOperation = ""
    var resetLable = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    
    }

    @IBAction func dotPressed(_ sender: UIButton) {
       // lable.text = lable.text! + "."
        if resetLable == true{
        lable.text = String(".")
        FirstNumber = Double(lable.text!)!
        resetLable = false
        
    }
    else{
        
        lable.text = lable.text! + String(".")
        FirstNumber = Double(lable.text!)!
    }
    
    }
    @IBAction func buttons(_ sender: UIButton) {
        if resetLable{
        lable.text = ""

        }
        lable.text = lable.text! + String(sender.tag)
        resetLable = false
    }
    
    @IBAction func mathBu(_ sender: UIButton) {
        switch sender.tag {
        case 11 :
            FirstNumber = Double(lable.text!)!
            mathOperation = "/"
            resetLable = true
        case 12 :
            FirstNumber = Double(lable.text!)!
            mathOperation = "*"
            resetLable = true
        case 13 :
            FirstNumber = Double(lable.text!)!
            mathOperation = "-"
            resetLable = true
        case 14 :
            FirstNumber = Double(lable.text!)!
            mathOperation = "+"
            resetLable = true
        
        default:
            lable.text = "Error"
        }
       
        
        }
        
        
   
    
    @IBAction func equalBu(_ sender: Any) {
       scandNumber = Double(lable.text!)!
        if mathOperation == "/"{
            lable.text = String(divideBy(number1: FirstNumber, number2: scandNumber))
        } else   if mathOperation == "*"{
            lable.text = String(multiplay(number1: FirstNumber, number2: scandNumber))
        }else   if mathOperation == "-"{
            lable.text = String(subtract(number1: FirstNumber, number2: scandNumber))
        }else if mathOperation == "+"{
            lable.text = String(sum(number1: FirstNumber, number2: scandNumber))
        }
        }

   
    
    @IBAction func clearAll(_ sender: Any) {
        lable.text = "0"
        FirstNumber = 0
       scandNumber = 0
        mathOperation = ""
      resetLable = true
        
    }
    
    func  divideBy (number1 :Double , number2: Double) -> Double{
        
        return number1 / number2
    }
    
    
    
    func multiplay (number1 :Double , number2: Double) -> Double{
        
        return number1 * number2
    }
    
    
    func  subtract (number1 : Double , number2:Double) -> Double{
        
        return number1 - number2
    }
    
    
    func  sum (number1 : Double , number2:Double) -> Double{
        
        return number1 + number2
    }
    
    
}


