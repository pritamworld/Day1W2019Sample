//
//  ViewController.swift
//  Day1W2019Sample
//
//  Created by moxDroid on 2019-03-04.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber2: UITextField!
    @IBOutlet weak var txtNumber1: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //self.lblMessage.text = "Hello World!!!"
        lblMessage.text = "Hello World!!!"
    }

    @IBAction func btnSubmitClick(_ sender: UIButton) {
        lblMessage.text = "I am from Button Touch"
    }
    
    @IBAction func btnOperator(_ sender: UIButton) {
        var a = Int(txtNumber1.text!)!
        var b = Int(txtNumber2.text!)!
        var c = 0
        switch(sender.tag)
        {
            case 0: c = a + b
            case 1: c = a - b
            case 2: c = a * b
            case 3: c = a / b
        default:
            c = 0
        }
        
        //lblMessage.text = String(c)
        lblMessage.text = "\(c)"
        
    }
}

