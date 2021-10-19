//
//  ViewController.swift
//  Lab10
//
//  Created by meme f on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var numOnLable1=0.0
    var numOnLable2=0.0
    var opretion=0
    var tempNo = ""
    
    var peforOperation=true
    
    @IBOutlet weak var labelView: UILabel!
   
    @IBOutlet weak var num0: UIButton!

    @IBOutlet weak var bcoma: UIButton!
    @IBOutlet weak var num3: UIButton!
    @IBOutlet weak var num2: UIButton!
    @IBOutlet weak var num1: UIButton!
    @IBOutlet weak var num6: UIButton!
    @IBOutlet weak var num5: UIButton!
    @IBOutlet weak var num4: UIButton!
    @IBOutlet weak var num9: UIButton!
    @IBOutlet weak var num8: UIButton!
    @IBOutlet weak var num7: UIButton!
    
    @IBOutlet weak var bEequal: UIButton!
    
    @IBOutlet weak var bAdd: UIButton!
    @IBOutlet weak var bSub: UIButton!
    @IBOutlet weak var bMultip: UIButton!
    @IBOutlet weak var bAc: UIButton!
    @IBOutlet weak var bDivide: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bAc.layer.cornerRadius = 0.3 *  bAc.bounds.size.height
        bAc.layer.masksToBounds = true
        
        num0.layer.cornerRadius = 0.5 *  num0.bounds.size.height
        num0.layer.masksToBounds = true
        
        num1.layer.cornerRadius = 0.5 *  num1.bounds.size.width
        num1.layer.masksToBounds = true
        
        num2.layer.cornerRadius = 0.5 *  num2.bounds.size.width
        num2.layer.masksToBounds = true
        
        num3.layer.cornerRadius = 0.5 *  num3.bounds.size.width
        num3.layer.masksToBounds = true
        
        num4.layer.cornerRadius = 0.5 *  num4.bounds.size.width
        num4.layer.masksToBounds = true
        
        num5.layer.cornerRadius = 0.5 *  num5.bounds.size.width
        num5.layer.masksToBounds = true
        
        num5.layer.cornerRadius = 0.5 *  num5.bounds.size.width
        num5.layer.masksToBounds = true
        
        num6.layer.cornerRadius = 0.5 *  num6.bounds.size.width
        num6.layer.masksToBounds = true
        
        num7.layer.cornerRadius = 0.5 *  num7.bounds.size.width
        num7.layer.masksToBounds = true
        
        num8.layer.cornerRadius = 0.5 *  num8.bounds.size.width
        num8.layer.masksToBounds = true
        
        num9.layer.cornerRadius = 0.5 *  num9.bounds.size.width
        num9.layer.masksToBounds = true
        
        bEequal.layer.cornerRadius = 0.5 *  bEequal.bounds.size.width
        bEequal.layer.masksToBounds = true
        
        bAdd.layer.cornerRadius = 0.5 *  bAdd.bounds.size.width
        bAdd.layer.masksToBounds = true
        
        bSub.layer.cornerRadius = 0.5 *  bSub.bounds.size.width
        bSub.layer.masksToBounds = true
        
        bMultip.layer.cornerRadius = 0.5 *  bMultip.bounds.size.width
        bMultip.layer.masksToBounds = true
        
        bDivide.layer.cornerRadius = 0.5 *  bDivide.bounds.size.width
        bDivide.layer.masksToBounds = true
        
        bcoma.layer.cornerRadius = 0.5 *  bcoma.bounds.size.width
        bcoma.layer.masksToBounds = true
        
        
}
    

    @IBAction func numbersAction(_ sender: UIButton) {
      
       
        if peforOperation == true
        {
           
          
            numOnLable2=numOnLable1
            labelView.text = String(sender.tag)
            numOnLable1 = Double( labelView.text!)!
            peforOperation = false
        }
        else
            {
           
                labelView.text=labelView.text!+String(sender.tag)
                numOnLable1 = Double( labelView.text!)!
                //peforOperation = true
               
                
            }
      
        
    

    }
    
    @IBAction func comaFunc(_ sender: UIButton) {
        labelView.text=labelView.text!+"."
    }
    

    
    @IBAction func oprFunc(_ sender: UIButton) {
        if (labelView.text != "" && sender.tag != 11 && sender.tag != 16){
            
           if sender.tag == 12{
               
           labelView.text = "÷"
               //opretion = 12

           }
           if  sender.tag == 13{
            labelView.text="×"
               //opretion = 13
           }
           if  sender.tag == 14{
            labelView.text="-"
               //opretion = 14
           }
           if  sender.tag == 15{
               
              labelView.text="+"
               //opretion = 15
           }
            opretion = sender.tag
            peforOperation = true
            
               }
       else if sender.tag == 16{
                
                   if opretion == 12{
                       let result = String(numOnLable2/numOnLable1)
                       if checkDouble(num: result) == true{
                           labelView.text = String(result)
                           
                       }else{
                          
                           labelView.text = String(Int(numOnLable2/numOnLable1))
                           
                       }
                   }else if opretion == 13{
                       let result = String(numOnLable2*numOnLable1)
                       if checkDouble(num: result) == true{
                           labelView.text = String(result)
                           
                       }else{
                          
                           labelView.text = String(Int(numOnLable2*numOnLable1))
                           
                       }
                       
                   }else if opretion == 14{
                       let result = String(numOnLable2-numOnLable1)
                       if checkDouble(num: result) == true{
                           labelView.text = String(result)
                           
                       }else{
                          
                           labelView.text = String(Int(numOnLable2-numOnLable1))
                           
                       }
                   }else if opretion == 15{
                       let result = String(numOnLable2+numOnLable1)
                       if checkDouble(num: result) == true{
                           labelView.text = String(result)
                           
                       }else{
                          
                           labelView.text = String(Int(numOnLable2+numOnLable1))
                           
                       }
                       
                   }
           
       }
       else if sender.tag==11{
                   labelView.text! = ""
                    numOnLable1=0
                    numOnLable2=0
                   opretion=0
               }
    }
    func checkDouble(num:String)->Bool{
        let result=num.split(separator: ".")
        let check = Int(result[1])
        if (check != 0 )
        {
            return true
        }else{
            return false
        }
        
    }
    
}

