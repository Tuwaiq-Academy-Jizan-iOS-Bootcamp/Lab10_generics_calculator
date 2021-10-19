//
//  ViewController.swift
//  Lab10
//
//  Created by Bushra Barakat on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewCal: UIView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var multiButton: UIButton!
    @IBOutlet weak var sButton: UIButton!
    @IBOutlet weak var msButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var comaButton: UIButton!
    @IBOutlet weak var zerroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var towButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    
    var numberOnScreen: Double = 0

    var previousNumber: Double = 0

    var performingMath = false

    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {

            lable.text = String(sender.tag-1)

        numberOnScreen = Double(lable.text!)!

        performingMath = false

        }else {

        lable.text = lable.text! + String(sender.tag-1)

        numberOnScreen = Double(lable.text!)!

        }


    }
        
    @IBAction func operationsAction(_ sender: UIButton) {
        if lable.text != "" && sender.tag != 11 && sender.tag != 16 {
        previousNumber = Double(lable.text!)!

        if sender.tag == 12 { //Divide

        lable.text = "/";

        }

        if sender.tag == 13 { //Multiply

        lable.text = "x";

        }

        if sender.tag == 14 { //Subtract

        lable.text = "-";

        }

        if sender.tag == 15 { //Add

        lable.text = "+";

        }
       
            
        operation = sender.tag

        performingMath = true;

        }

        else if sender.tag == 16 {

        if operation == 12{ //Divide

        lable.text = String(previousNumber / numberOnScreen)

        }

        else if operation == 13{ //Multiply

        lable.text = String(previousNumber * numberOnScreen)

        }

        else if operation == 14{ //Subtract

        lable.text = String(previousNumber - numberOnScreen)

        }

        else if operation == 15{ //Add

        lable.text = String(previousNumber + numberOnScreen)

        }

        }

        else if sender.tag == 11{

        lable.text = ""

        previousNumber = 0

        numberOnScreen = 0

        operation = 0

        }
        
    }
    
        
    @IBAction func comaAction(_ sender: Any) {
        lable.text = lable.text! + "."

       
        
    }
    
    }


