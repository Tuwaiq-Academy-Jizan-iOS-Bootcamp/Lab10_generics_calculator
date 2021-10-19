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
    
    
    @IBOutlet var buttonsCircle: [UIButton]!
    
    @IBOutlet weak var labelView: UILabel!
   

    @IBOutlet weak var bAc: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bAc.layer.cornerRadius = 0.3 *  bAc.bounds.size.height
        bAc.layer.masksToBounds = true
         
        for i in buttonsCircle{
            
        
        i.layer.cornerRadius = 0.5 *  i.bounds.size.height
        i.layer.masksToBounds = true
        }
        
        
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

