//
//  ViewController.swift
//  Labbb
//
//  Created by Hanan Somily on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screen: UILabel!
    var number1:Double = 0
    var number2:Double = 0
    var reselt:Double = 0
    var operation = 0
    var performingMath = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func operation(_ sender: UIButton){
        switch operation {
    case 10:
            clear()
    case 13:
        //reselt = Int(screen.text!)!
        reselt = number1 + number2
        screen.text = String(reselt)
    case 12:
        reselt = number1 * number2
        //number1 = Int(screen.text!)!
        screen.text = String(reselt)
    case 14:
        reselt = number1 - number2
        //number1 = Int(screen.text!)!
       screen.text = String(reselt)
    case 11:
            screen.text = String(number1 / number2)
       // number1 = Int(screen.text!)!
       // screen.text = String(reselt)
        default :
            screen.text = "error"
    }}
       // number2 = Int(screen.text)
         /* if sender.tag == 10 {
            clear()}
            if sender.tag == 13 {
        reselt = number1 + number2
                number1 = Int(screen.text!)!
                screen.text = String(reselt)}
            if sender.tag == 12 {
        reselt = number1 * number2
                number1 = Int(screen.text!)!
            screen.text = String(reselt)}
            if sender.tag == 13 {
        reselt = number1 - number2
                number1 = Int(screen.text!)!
                screen.text = String(reselt)}
            if sender.tag == 11 {
        reselt = number1 / number2
                number1 = Int(screen.text!)!
                screen.text = String(reselt)}
            if sender.tag == 15{
                reselt = Int(screen.text!)!}
          } */
        func clear(){
            screen.text = "" }
        
    @IBAction func number(_ sender: UIButton) {
        if performingMath == true {

        screen.text = String(sender.tag)

        number1 = Double(screen.text!)!

        performingMath = false

        }

        else {
        screen.text = screen.text! + String(sender.tag)

        number1 = Double(screen.text!)!

        }
        screen.text = String (sender.tag)
            
          

            }
}
   

