//
//  roundButton.swift
//  C1
//
//  Created by layla hakami on 12/03/1443 AH.
//

import UIKit

class roundButton: UIButton {
    
    @IBInspectable var roundButton : Bool = false {
           didSet{
               if roundButton {
                   layer.cornerRadius = frame.height / 2
               }
           }
       }
       override func prepareForInterfaceBuilder() {
           if roundButton {
           layer.cornerRadius = frame.height / 2
           }
       }
       
}
