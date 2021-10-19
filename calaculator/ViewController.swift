//
//  ViewController.swift
//  calaculator
//
//  Created by Afaf Yahya on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var viewResult: UILabel!
    
    var varNumber1 = 0
     var varNumber2 = 0
     var varNumberResult = 0
     var varOperator = "+"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "1"
    }
    
    @IBAction func button2(_ sender: UIButton) {viewResult.text = viewResult.text! + "2"
    }
    
    @IBAction func button3(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "3"
    }
    @IBAction func button4(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "4"
    }
    @IBAction func button5(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "5"
    }
    @IBAction func button6(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "6"

    }
    @IBAction func butoo7(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "7"
    }
    @IBAction func button8(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "8"
    }
    @IBAction func button9(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "9"
    }
    
    @IBAction func button0(_ sender: UIButton) {
        viewResult.text = viewResult.text! + "0"
    }
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        varOperator = "*"
        varNumber1 = Int(viewResult.text!)!
    }
    @IBAction func buttonDivision(_ sender: UIButton) {
        varOperator = "/"
         varNumber1 = Int(viewResult.text!)!
    }
    @IBAction func buttonMinus(_ sender: UIButton) {
        varOperator = "-"
         varNumber1 = Int(viewResult.text!)!
    }
    @IBAction func buttonPlus(_ sender: UIButton){

        varOperator = "+"
        varNumber1 = Int(viewResult.text!)!
    }

    @IBAction func buttonEqual(_ sender: UIButton) {
        varNumber2 = Int(viewResult.text!)!
        
        switch varOperator {
        case "+":
            varNumberResult = varNumber1+varNumber2
            viewResult.text = String(varNumberResult)
        case "-":
            varNumberResult = varNumber1-varNumber2
            viewResult.text = String(varNumberResult)
        case "*":
            varNumberResult = varNumber1*varNumber2
            viewResult.text = String(varNumberResult)
        case "/":
            varNumberResult = varNumber1/varNumber2
            viewResult.text = String(varNumberResult)
        default:
            viewResult.text = "ERROR"
    }
}
    @IBAction func buttonClear(_ sender: UIButton) {
        clearText()
    }
    
    func clearText() {
        viewResult.text  = ""
}
}
