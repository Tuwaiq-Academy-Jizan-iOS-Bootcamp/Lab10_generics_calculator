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
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2
        }
    }
    
}
