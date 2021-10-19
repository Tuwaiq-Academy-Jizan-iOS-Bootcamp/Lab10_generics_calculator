//
//  ViewController.swift
//  lab10 Calculator
//
//  Created by Abdulrahman Gazwani on 12/03/1443 AH.
//

import UIKit

enum operation : String {
    case Add = "+"
    case subtract = "-"
    case Divide = "/"
    case multiply = "*"
     case NULL = "Null"
}

class ViewController: UIViewController {

    @IBOutlet weak var output:
    UILabel!
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:operation = .NULL
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        output.text = "0"
        
        //action
    }
    @IBAction func numberPressed(_ sender: UIButton) {
        if runningNumber.count <= 8 {
          runningNumber += "\(sender.tag)"
        output.text = runningNumber
        }
    }
    @IBAction func allClearPressed(_ sender: Any) {
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .NULL
        output . text = "0"
    }
   
    @IBAction func Dot(_ sender: Any) {
        if runningNumber.count <=  7 {
        runningNumber += "."
        output.text = runningNumber
        }
    }
    
    @IBAction func equal(_ sender: Any) {
        operation(operation: currentOperation)
    }
    
    @IBAction func addPressed(_ sender: Any) {
        operation(operation: .Add)
    }
    
    @IBAction func subtractPressed(_ sender: Any) {
        operation(operation:.subtract)
    }
    
    @IBAction func mltiplyPressed(_ sender: Any) {
        operation(operation: .multiply)
    }
    
    @IBAction func dividePressed(_ sender: Any) {
        operation(operation: .Divide)
    }
    func operation(operation:operation) {
        if currentOperation != .NULL {
            if runningNumber != "" {
             rightValue = runningNumber
                runningNumber = ""
                
                if currentOperation == .Add {
                    result = "\(Double(leftValue)! + Double (rightValue)!)"
                }else if currentOperation == .subtract {
                    result = "\(Double(leftValue)! + Double (rightValue)!)"
                }else if currentOperation == .multiply {
                    result = "\(Double(leftValue)! + Double (rightValue)!)"
                }else if currentOperation == .Divide {
                    result = "\(Double(leftValue)! + Double (rightValue)!)"
                }
                leftValue = result
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0 ) {
                    result = "\(Int(Double(result)!))"
                }
                output.text = result
            }
            currentOperation = operation
        }else {
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    
}

