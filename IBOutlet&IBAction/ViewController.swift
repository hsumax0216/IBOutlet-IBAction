//
//  ViewController.swift
//  IBOutlet&IBAction
//
//  Created by VMwareMojave on 2019/4/7.
//  Copyright © 2019 VMwareMojave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var show1: UILabel!
    @IBOutlet weak var slider1out: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Actionfunc(_ sender: Any) {
        if let input=text1.text,let _number = Double(input){
            show1.text = String(format: "%.2f", _number )
        }
        view.endEditing(true)
    }
    
    @IBAction func slider1(_ sender: Any) {
        text2.text = String(format: "%3.f", slider1out.value )
    }
    
}

