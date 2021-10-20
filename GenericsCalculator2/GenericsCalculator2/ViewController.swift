//
//  ViewController.swift
//  GenericsCalculator2
//
//  Created by Yasir Hakami on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lanumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var newOpreation = true
    func addnumber(number: String){
        var textNumber = String(lanumber.text!)
        if newOpreation {
            textNumber = ""
            newOpreation = false
        }
        textNumber = textNumber + number
        lanumber.text = textNumber
    }
    
    @IBAction func num0(_ sender: Any) {
        addnumber(number: "0")
    }
    @IBAction func numpoint(_ sender: Any) {
        addnumber(number: ".")
    }
    @IBAction func num1(_ sender: Any) {
        addnumber(number: "1")
    }
    @IBAction func num2(_ sender: Any) {
        addnumber(number: "2")
    }
    @IBAction func num3(_ sender: Any) {
        addnumber(number: "3")
    }
    @IBAction func num4(_ sender: Any) {
        addnumber(number: "4")
    }
    @IBAction func num5(_ sender: Any) {
        addnumber(number: "5")
    }
    @IBAction func num6(_ sender: Any) {
        addnumber(number: "6")
    }
    @IBAction func num7(_ sender: Any) {
        addnumber(number: "7")
    }
    @IBAction func num8(_ sender: Any) {
        addnumber(number: "8")
    }
    @IBAction func num9(_ sender: Any) {
        addnumber(number: "9")
    }
    var op = "+"
    var number1 : Double?
    @IBAction func mul(_ sender: Any) {
        op = "*"
        number1 = Double(lanumber.text!)
    }
    
    
}

