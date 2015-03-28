//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Victor Guerra on 27/03/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColortextFieldDelegate : NSObject, UITextFieldDelegate {

    let colors = [UIColor.redColor(), UIColor.orangeColor(), UIColor.yellowColor(),
        UIColor.greenColor(), UIColor.blueColor(), UIColor.purpleColor(),
        UIColor.brownColor()]
    
    func randomColor() -> UIColor {
        return colors[Int(arc4random() % UInt32(colors.count))]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = randomColor()
        return true
    }
    
}