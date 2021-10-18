//
//  ViewController.swift
//  MyCalculator
//
//  Created by يوسف جابر المالكي on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var LNumberShow: UILabel!
    
    
    

        override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var newOperation = true
    func addNumberToInput (number : String )  {
        var textNumber = LNumberShow.text!
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        LNumberShow.text = textNumber
    }
        
    @IBAction func button0(_ sender: Any) {
        addNumberToInput (number : "0" )
        
    }
    
    @IBAction func button1(_ sender: Any) {
        addNumberToInput (number : "1" )
        
    }
    @IBAction func button2(_ sender: Any) {
        addNumberToInput (number : "2" )
        
    };    @IBAction func button3(_ sender: Any) {
        addNumberToInput (number : "3" )
        
    };    @IBAction func button4(_ sender: Any) {
        addNumberToInput (number : "4" )
        
    };    @IBAction func button5(_ sender: Any) {
        addNumberToInput (number : "5" )
        
    };    @IBAction func button6(_ sender: Any) {
        addNumberToInput (number : "6" )
        
    };    @IBAction func button7(_ sender: Any) {
        addNumberToInput (number : "7" )
        
    };    @IBAction func button8(_ sender: Any) {
        addNumberToInput (number : "8" )
    
    };    @IBAction func button9(_ sender: Any) {
        addNumberToInput (number : "9" )
        
    }
    var op = "+"
    var number1:Double?
    @IBAction func buttonMul(_ sender: Any) {
        
        op = "*"
        number1 = Double (LNumberShow.text!)
        newOperation = true
        
    }

        @IBAction func buttonDiv(_ sender: Any) {
            
            op = "/"
            number1 = Double (LNumberShow.text!)
            newOperation = true
            
            
            
        }
        
        @IBAction func buttonMinc(_ sender: Any) {
            
            op = "-"
            number1 = Double (LNumberShow.text!)
            newOperation = true
            
        }
        
        
        @IBAction func buttonBlus(_ sender: Any) {
            
            op = "+"
            number1 = Double (LNumberShow.text!)
            newOperation = true
            
        }
        
    @IBAction func buttonBM(_ sender: Any) {
        
        var textNumber = String(LNumberShow.text!)
        textNumber = "-" + textNumber
        LNumberShow.text = textNumber
        
    }
    
    @IBAction func buttonPresent(_ sender: Any) {
        var number1 = Double(LNumberShow.text!)
        
        number1 = number1!/100
        LNumberShow.text = String(number1!)
        newOperation = true
        
        
    }
    
    
    
    

    @IBAction func buttonClear(_ sender: Any) {
        
        LNumberShow.text = "0"
        
        newOperation = true
    }
    

    
    @IBAction func buttonEquei(_ sender: Any) {
        let number2 = Double(LNumberShow.text!)
        var result : Double?
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
        LNumberShow.text = String(result!)
        newOperation = true
    }

    

}
