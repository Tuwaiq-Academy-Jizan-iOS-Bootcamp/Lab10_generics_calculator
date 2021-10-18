//
//  ViewController.swift
//  Lab10
//
//  Created by Dua'a ageel on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var numberOnview:Double = 0;
    var previosNumber:Double = 0;
    var mathProcess = false
    var opration = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if mathProcess == true
        {
            label.text = String(sender.tag-1)
            numberOnview = Double(label.text!)!
            mathProcess = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnview = Double(label.text!)!
        }
        
    }
    
    @IBAction func UIButton(_ sender: UIButton) {
    if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
        previosNumber = Double(label.text!)!
            if sender.tag == 12
        {
                label.text = "/";
        }
        else if sender.tag == 13
        {
            label.text = "*";
        }
        else if sender.tag == 14
        {
            label.text = "-";
        }
        else if sender.tag == 15
        {
            label.text = "+";
        }
        opration = sender.tag
        mathProcess = true;
    }
        else if sender.tag == 16
        {
            if opration == 12
            {
            label.text = String(previosNumber
                / numberOnview)
            }
            else if opration == 13
            {
                label.text = String(previosNumber
                    * numberOnview)
            }
            else if opration == 14
            {
                label.text = String(previosNumber
                    - numberOnview)
            }
            else if opration == 15
            {
                label.text = String(previosNumber
                    + numberOnview)
            }
      }
        else if sender.tag == 11
        {
            label.text = ""
            previosNumber = 0;
            numberOnview = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

