//
//  ViewController.swift
//  Calculator
//
//  Created by Rodrigo Filomeno on 06/11/17.
//  Copyright © 2017 Rodrigo Filomeno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Display: UILabel!
    var userIsTyping = false
    
    @IBAction func NumPadPressed(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        var textCurrentlyInDisplay = Display.text!
        if userIsTyping{
            textCurrentlyInDisplay = Display.text! + digit
        }else {
            textCurrentlyInDisplay = digit
            userIsTyping = true
            
        }
        
        Display.text = textCurrentlyInDisplay
    }
    
    var displayValue : Double {
        get{
            return Double(Display.text!)!
        }
        set{
            Display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol{
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
    
    
}

