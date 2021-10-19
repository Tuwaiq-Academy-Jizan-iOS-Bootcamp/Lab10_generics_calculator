//
//  ViewController.swift
//  lastT
//
//  Created by ماك بوك on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LaNumberShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var newOperatoin = true

    func AddNumberToInput(number:String) {
        var textNumber = (LaNumberShow.text!)
        if newOperatoin {
            textNumber = ""
            newOperatoin = false
        }
        textNumber = textNumber + number
        LaNumberShow.text = textNumber
        
}
    
    @IBAction func Bu0(_ sender: Any) {
        AddNumberToInput(number: "0")
        
    }
    
    @IBAction func BuDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    @IBAction func Bu1(_ sender: Any) {
        AddNumberToInput(number: "1")
        
    }

    @IBAction func Bu2(_ sender: Any) {
        AddNumberToInput(number: "2")
        
    }
    @IBAction func Bu3(_ sender: Any) {
        AddNumberToInput(number: "3")
        
    }
    @IBAction func Bu4(_ sender: Any) {
        AddNumberToInput(number: "4")
        
    }
    @IBAction func Bu5(_ sender: Any) {
        AddNumberToInput(number: "5")
        
    }
    @IBAction func Bu6(_ sender: Any) {
        AddNumberToInput(number: "6")
        
    }
    @IBAction func Bu7(_ sender: Any) {
        AddNumberToInput(number: "7")
        
    }
    @IBAction func Bu8(_ sender: Any) {
        AddNumberToInput(number: "8")
        
    }
    @IBAction func Bu9(_ sender: Any) {
        AddNumberToInput(number: "9")
        
    }
}

