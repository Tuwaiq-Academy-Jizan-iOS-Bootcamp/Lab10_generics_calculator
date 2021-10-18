//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Jawaher Mohammad on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewScreen: UIView!
    @IBOutlet weak var lablelNumber: UILabel!
    
    //creating a variable
    var numberOnScreen = 0.0
    var previousNumber = 0.0
    var performingMath = false
    var operation = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //connection all number button
    @IBAction func oneButton(_ sender: UIButton) {
       if performingMath == true {
        lablelNumber.text = String(sender.tag)

        numberOnScreen = Double(lablelNumber.text!)!

        performingMath = false

        }

        else {

        lablelNumber.text = lablelNumber.text! + String(sender.tag)
            numberOnScreen = Double(lablelNumber.text!)!

        }
        
    }
    
    //connection for ","
    @IBAction func buttonActin(_ sender: UIButton) {
        lablelNumber.text = lablelNumber.text! + "."
    }
    
    //connection all operation button
    @IBAction func operationsAction(_ sender: UIButton) {
       if lablelNumber.text != "" && sender.tag != 11 && sender.tag != 16 {
       previousNumber = Double(lablelNumber.text!)!

           
        operation = sender.tag
       /*    switch operation{
            case 12:
                lablelNumber.text = "/"
            case 13:
                lablelNumber.text = "*"
            case 14:
                lablelNumber.text = "-"
            case 15:
                lablelNumber.text = "+"
            default:
                lablelNumber.text = "ERROR"
            }*/
           performingMath = true
       }
        
 else if sender.tag == 16 {

            switch operation {
            case 12:
                lablelNumber.text = String(previousNumber / numberOnScreen)
            case 13:
                lablelNumber.text = String(previousNumber * numberOnScreen)
            case 14:
                lablelNumber.text = String(previousNumber - numberOnScreen)
            case 15:
                lablelNumber.text = String(previousNumber + numberOnScreen)
            default:
                lablelNumber.text = "ERROR"
            }
        }
        
        else if sender.tag == 11{
        lablelNumber.text = ""
        previousNumber = 0
        numberOnScreen = 0
        operation = 0
        }
    }
}


