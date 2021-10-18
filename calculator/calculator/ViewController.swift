//
//  ViewController.swift
//  calculator
//
//  Created by Arwa Alattas on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen: Double = 0
    var previousNumber : Double = 0
    var performingMath = false
    var opration = 0
    @IBOutlet weak var lable: UILabel!

  /* var newOperation = true
        func AddNumerToInput(number:String){
                var textNumber = String(
                    lable.text!)
                if newOperation {
                    textNumber = ""
                    newOperation = false
                }
                textNumber = textNumber + number
                lable.text = textNumber
        }*/
   
    
    @IBAction func dotBU(_ sender: Any) {
        if performingMath == true{
            lable.text = String(".")
            numberOnScreen = Double(lable.text!)!
            performingMath = false
            
        }
        else{
            
            lable.text = lable.text! + String(".")
            numberOnScreen = Double(lable.text!)!
        }
        
       // AddNumerToInput(number: ".")
    }
    
    @IBAction func numbers(_ sender: UIButton) {
            if performingMath == true{
                lable.text = String(sender.tag-1)
                numberOnScreen = Double(lable.text!)!
                performingMath = false
                
            }
            else{
                
                lable.text = lable.text! + String(sender.tag-1)
                numberOnScreen = Double(lable.text!)!
            }
            
        }

    
    @IBAction func buttons(_ sender: UIButton) {
        if lable.text !=  "" && sender.tag != 11 && sender.tag != 16 {
            previousNumber = Double(lable.text!)!
            
            if sender.tag == 12 {//Divide
                lable.text = String(Int(previousNumber))
                
            }
            if sender.tag == 13{//Multiplay
                lable.text = String(Int(previousNumber))
                
            }
       
        if sender.tag == 14{//Subtract
            lable.text = String(Int(previousNumber))
            
        }
   
    
    if sender.tag == 15 {//Add
        lable.text = String(Int(previousNumber))
        
    }
        opration = sender.tag
        performingMath = true
    
        }
        else if sender.tag == 16{
        
            if opration == 12 {//Divide
                 lable.text = String(previousNumber / numberOnScreen)
                
            } else if opration == 13 {//Multiplay
                lable.text = String(previousNumber * numberOnScreen)
                
            }else if opration == 14 {//Subtract
                lable.text = String(previousNumber - numberOnScreen)
                
            }
            if opration == 15 {//Add
                lable.text = String(previousNumber + numberOnScreen)
                
            }
        }
    
        else if sender.tag == 11 {
            lable.text = ""
            previousNumber = 0
            numberOnScreen = 0
            opration = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    



}
