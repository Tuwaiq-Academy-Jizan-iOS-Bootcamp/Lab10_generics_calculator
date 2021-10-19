//
//  RoundButton.swift
//  calculator
//
//  Created by Arwa Alattas on 12/03/1443 AH.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton : Bool = false {
        didSet{
            if roundButton {
                layer.cornerRadius = frame.height / 2
                layer.masksToBounds = true
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.width / 2
            layer.masksToBounds = true
        }
    }
    
}
