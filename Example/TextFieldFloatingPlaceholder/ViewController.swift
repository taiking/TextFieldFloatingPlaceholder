//
//  ViewController.swift
//  TextFieldFloatingPlaceholder
//
//  Created by chocovayashi on 04/13/2018.
//  Copyright (c) 2018 chocovayashi. All rights reserved.
//

import UIKit
import TextFieldFloatingPlaceholder

class ViewController: UIViewController {
    
    @IBOutlet var firstTextField: TextFieldFloatingPlaceholder!
    
    @IBOutlet var secondTextField: TextFieldFloatingPlaceholder!
    
    @IBOutlet var thirdTextField: TextFieldFloatingPlaceholder!
    
    @IBOutlet var viewTap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTextField.validation = { $0.count > 4 }
        
        secondTextField.floatingPlaceholderColor = UIColor.blue.withAlphaComponent(0.3)
        
        thirdTextField.floatingPlaceholderMinFontSize = 25
        thirdTextField.validation = { $0.count > 1 }
        thirdTextField.validationFalseLineEditingColor = .purple
        thirdTextField.validationTrueLineEditingColor = .orange
        
        viewTap.addTarget(self, action: #selector(ViewController.tap))
    }
    
    @objc func tap() {
        firstTextField.endEditing(true)
        secondTextField.endEditing(true)
        thirdTextField.endEditing(true)
    }
}

