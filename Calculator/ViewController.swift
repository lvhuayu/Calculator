//
//  ViewController.swift
//  Calculator
//
//  Created by Huayu Lyu on 15/5/3.
//  Copyright (c) 2015年 Huayu Lyu. All rights reserved.
//

import UIKit
// each view has its own controller
class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber:Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
}

