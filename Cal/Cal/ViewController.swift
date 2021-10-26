//
//  ViewController.swift
//  Cal
//
//  Created by Hanan Somily on 19/10/2021.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    var number1:Double = 0
    var number2:Double = 0
var operation = ""
var reseltValue = true
    
    @IBOutlet weak var screen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func coma(_ sender: UIButton) {
       // print(sender.currentTitle!)
        if reseltValue == true {
            screen.text = "" }
        screen.text = screen.text! + String(".")
        reseltValue = false
        }
        
    @IBAction func number(_ sender: UIButton) {
        if reseltValue == true {
            screen.text = "" }
        screen.text = screen.text! + String(sender.tag)
        reseltValue = false
        }
    @IBAction func mathOperation(_ sender: UIButton) {
        switch sender.tag {
        case 11 : number1 = Double(screen.text!)!
            operation = "/"
            reseltValue = true
        case 12 :number1 = Double(screen.text!)!
            operation = "*"
            reseltValue = true
        case 13 :number1 = Double(screen.text!)!
            operation = "+"
            reseltValue = true
        case 14 :number1 = Double(screen.text!)!
            operation = "-"
            reseltValue = true
        case 10 :
            screen.text = "0"
            number1 = 0
            number2 = 0
            reseltValue = true
        default :
            screen.text = "Error"
        }
        
    }
    
    @IBAction func equal(_ sender: UIButton) {
        let fmt = NumberFormatter()
        // Optional:
        fmt.minimumIntegerDigits = 1
        fmt.maximumFractionDigits = 4
        fmt.minimumFractionDigits = 0
        number2 = Double(screen.text!)!
        if operation == "/"{
            screen.text = (fmt.string(from: divide(number1: number1, number2: number2) as NSNumber)!);
            reseltValue = true
        }
        if operation == "*"{
            screen.text = (fmt.string(from: multi(number1: number1, number2: number2) as NSNumber)!);
            reseltValue = true
        }
        if operation == "+"{
            screen.text = (fmt.string(from:sum(number1: number1, number2: number2) as NSNumber)!);
            reseltValue = true
        }
        if operation == "-"{
            screen.text = (fmt.string(from: munse(number1: number1, number2: number2) as NSNumber)!);
            reseltValue = true
        }
      
        }

    func divide <P:BinaryFloatingPoint>(number1:P,number2:P)->P{
        return(number1/number2) }
    func multi <T:Numeric>(number1:T, number2:T)->T{
        return number1 * number2
    }
    func sum <T:Numeric>(number1:T , number2:T) -> T {
        return number1+number2
    }
    func munse <T:Numeric>(number1:T, number2:T)->T{
        return number1-number2
    }

    
}

