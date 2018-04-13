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
    
    @IBOutlet var textFieldFloatingPlaceholder: TextFieldFloatingPlaceholder!
    
    @IBOutlet var viewTap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldFloatingPlaceholder.validation = { $0.count > 0 }
        
        viewTap.addTarget(self, action: #selector(ViewController.tap))
    }
    
    @objc func tap() {
        textFieldFloatingPlaceholder.endEditing(true)
    }
}

