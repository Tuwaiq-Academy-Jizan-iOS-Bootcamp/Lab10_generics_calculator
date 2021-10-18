//
//  ViewController.swift
//  Calculate
//
//  Created by Hanan Somily on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    //var nemberOnScreen:Double = 0
    //var preveoceNumber:Double = 0
    var reselt = 0
    var number1 = 0
    var number2 = 0
    var operation = "+"
    override func viewDidLoad() {
        super.viewDidLoad() }
        // Do any additional setup after loading the view.
       
    @IBAction func clear(_ sender: Any) {
        clearText()
    }
   
    @IBAction func divi(_ sender: Any) {
        operation = "÷"
       number1 = Int(screen.text!)!
        opera()
        clearText()
    }
    @IBAction func malti(_ sender: Any) {
        operation = "×"
        number1 = Int(screen.text!)!
        opera()
        clearText()
    }
    @IBAction func muns(_ sender: Any) {
        operation = "-"
       number1 = Int(screen.text!)!
        opera()
        clearText()
    }
    @IBAction func sum(_ sender: Any) {
        operation = "+"
       number1 = Int(screen.text!)!
        opera()
        clearText()
    }
    @IBAction func equal(_ sender: Any) {
        number2 = Int(screen.text!)!
        opera()
    }
    @IBAction func coma(_ sender: Any) {
        screen.text =  "."

    }
    @IBAction func zero(_ sender: Any) {
        screen.text =  "0"
    }
    @IBAction func n1(_ sender: Any) {
        screen.text =  "1"

    }
    @IBAction func n2(_ sender: Any) {
        screen.text =  "2"

    }
    @IBAction func n3(_ sender: Any) {
        screen.text =  "3"

    }
    @IBAction func n4(_ sender: Any) {
        screen.text =  "4"

    }
    @IBAction func n5(_ sender: Any) {
        screen.text =  "5"

    }
    @IBAction func n6(_ sender: Any) {
        screen.text =  "6"
    }

    @IBAction func n7(_ sender: Any) {
        screen.text =  "7"

    }
    @IBAction func n8(_ sender: Any) {
        screen.text =  "8"

    }
    @IBAction func n9(_ sender: Any) {
        screen.text =  "9"

    }
    
    func opera(){
    if operation == "+"{
        reselt = number1 + number2
        screen.text = String(reselt)}
    if operation == "×" {
        reselt = number1 * number2
        screen.text = String(reselt) }
    if operation == "-" {
        reselt = number1 - number2
        screen.text = String(reselt) }
    if operation == "÷" {
        reselt = number1 / number2
        screen.text = String(reselt)}
    }
    func clearText(){
        screen.text = "" }
   
    /*
    switch operation {
    case "+" :
        reselt = number1 + number2
        screen.text = String(reselt)
    case "×" :
        reselt = number1 * number2
        screen.text = String(reselt)
    case "-" :
        reselt = number1 - number2
        screen.text = String(reselt)
    case "÷" :
        reselt = number1 % number2
        screen.text = String(reselt)
    default :
        screen.text = "" */
    }


