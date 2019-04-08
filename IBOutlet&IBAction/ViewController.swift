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
    @IBOutlet var freedomMan: UIImageView!
    @IBOutlet var segmentedControlOut: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let images = [UIImage(named: "frame_00_delay-0.2s")!, UIImage(named: "frame_01_delay-0.2s")!, UIImage(named: "frame_02_delay-0.2s")!, UIImage(named: "frame_03_delay-0.2s")!, UIImage(named: "frame_04_delay-0.2s")!, UIImage(named: "frame_05_delay-0.2s")!, UIImage(named: "frame_06_delay-0.2s")!, UIImage(named: "frame_07_delay-0.2s")!, UIImage(named: "frame_08_delay-0.2s")!, UIImage(named: "frame_09_delay-0.2s")!, UIImage(named: "frame_10_delay-0.2s")!, UIImage(named: "frame_11_delay-0.2s")!, UIImage(named: "frame_12_delay-0.2s")!, UIImage(named: "frame_13_delay-0.2s")!, UIImage(named: "frame_14_delay-0.2s")!, UIImage(named: "frame_15_delay-0.2s")!, UIImage(named: "frame_16_delay-0.2s")!, UIImage(named: "frame_17_delay-0.2s")!]
        let animatedImage = UIImage.animatedImage(with: images, duration: 2.5)
        freedomMan.image = animatedImage
        
    }
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        var images = [UIImage(named: "frame_00_delay-0.2s")!, UIImage(named: "frame_01_delay-0.2s")!, UIImage(named: "frame_02_delay-0.2s")!, UIImage(named: "frame_03_delay-0.2s")!, UIImage(named: "frame_04_delay-0.2s")!, UIImage(named: "frame_05_delay-0.2s")!, UIImage(named: "frame_06_delay-0.2s")!, UIImage(named: "frame_07_delay-0.2s")!, UIImage(named: "frame_08_delay-0.2s")!, UIImage(named: "frame_09_delay-0.2s")!, UIImage(named: "frame_10_delay-0.2s")!, UIImage(named: "frame_11_delay-0.2s")!, UIImage(named: "frame_12_delay-0.2s")!, UIImage(named: "frame_13_delay-0.2s")!, UIImage(named: "frame_14_delay-0.2s")!, UIImage(named: "frame_15_delay-0.2s")!, UIImage(named: "frame_16_delay-0.2s")!, UIImage(named: "frame_17_delay-0.2s")!]
        var speed=2.5
        switch(sender.selectedSegmentIndex){
        case 0:
            speed=2.5
            break
        case 1:
            images = [UIImage(named: "frame_00_delay-0.05s")!,UIImage(named: "frame_01_delay-0.05s")!, UIImage(named: "frame_02_delay-0.05s")!, UIImage(named: "frame_03_delay-0.05s")!, UIImage(named: "frame_04_delay-0.05s")!, UIImage(named: "frame_05_delay-0.05s")!, UIImage(named: "frame_06_delay-0.05s")!, UIImage(named: "frame_07_delay-0.05s")!, UIImage(named: "frame_08_delay-0.05s")!, UIImage(named: "frame_09_delay-0.05s")!, UIImage(named: "frame_10_delay-0.05s")!, UIImage(named: "frame_11_delay-0.05s")!, UIImage(named: "frame_12_delay-0.05s")!, UIImage(named: "frame_13_delay-0.05s")!, UIImage(named: "frame_14_delay-0.05s")!, UIImage(named: "frame_15_delay-0.05s")!, UIImage(named: "frame_16_delay-0.05s")!, UIImage(named: "frame_17_delay-0.05s")!, UIImage(named: "frame_18_delay-0.05s")!, UIImage(named: "frame_19_delay-0.05s")!, UIImage(named: "frame_20_delay-0.05s")!, UIImage(named: "frame_21_delay-0.05s")!, UIImage(named: "frame_22_delay-0.05s")!, UIImage(named: "frame_23_delay-0.05s")!, UIImage(named: "frame_24_delay-0.05s")!, UIImage(named: "frame_25_delay-0.05s")!, UIImage(named: "frame_26_delay-0.05s")!]
            speed=1
            break
        case 2:
            images = [UIImage(named: "frame_00_delay-0.12s")!,UIImage(named: "frame_01_delay-0.12s")!,UIImage(named: "frame_02_delay-0.12s")!,UIImage(named: "frame_03_delay-0.12s")!,UIImage(named: "frame_04_delay-0.12s")!,UIImage(named: "frame_05_delay-0.12s")!,UIImage(named: "frame_06_delay-0.12s")!,UIImage(named: "frame_07_delay-0.12s")!,UIImage(named: "frame_08_delay-0.12s")!,UIImage(named: "frame_09_delay-0.12s")!,UIImage(named: "frame_10_delay-0.12s")!,UIImage(named: "frame_11_delay-0.12s")!,UIImage(named: "frame_12_delay-0.12s")!,UIImage(named: "frame_13_delay-0.12s")!,UIImage(named: "frame_14_delay-0.12s")!,UIImage(named: "frame_15_delay-0.12s")!,UIImage(named: "frame_16_delay-0.12s")!]
            speed=2
            break
        default:
            print("ERROR")
        }
        let animatedImage = UIImage.animatedImage(with: images, duration: speed)
        freedomMan.image = animatedImage
        
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

/*
 let images = [UIImage(named: "frame_00_delay-0.05s")!,UIImage(named: "frame_01_delay-0.05s")!, UIImage(named: "frame_02_delay-0.05s")!, UIImage(named: "frame_03_delay-0.05s")!, UIImage(named: "frame_04_delay-0.05s")!, UIImage(named: "frame_05_delay-0.05s")!, UIImage(named: "frame_06_delay-0.05s")!, UIImage(named: "frame_07_delay-0.05s")!, UIImage(named: "frame_08_delay-0.05s")!, UIImage(named: "frame_09_delay-0.05s")!, UIImage(named: "frame_10_delay-0.05s")!, UIImage(named: "frame_11_delay-0.05s")!, UIImage(named: "frame_12_delay-0.05s")!, UIImage(named: "frame_13_delay-0.05s")!, UIImage(named: "frame_14_delay-0.05s")!, UIImage(named: "frame_15_delay-0.05s")!, UIImage(named: "frame_16_delay-0.05s")!, UIImage(named: "frame_17_delay-0.05s")!, UIImage(named: "frame_18_delay-0.05s")!, UIImage(named: "frame_19_delay-0.05s")!, UIImage(named: "frame_20_delay-0.05s")!, UIImage(named: "frame_21_delay-0.05s")!, UIImage(named: "frame_22_delay-0.05s")!, UIImage(named: "frame_23_delay-0.05s")!, UIImage(named: "frame_24_delay-0.05s")!, UIImage(named: "frame_25_delay-0.05s")!, UIImage(named: "frame_26_delay-0.05s")!]
 */
/*
 let images = [UIImage(named: "frame_00_delay-0.12s")!,UIImage(named: "frame_01_delay-0.12s")!,UIImage(named: "frame_02_delay-0.12s")!,UIImage(named: "frame_03_delay-0.12s")!,UIImage(named: "frame_04_delay-0.12s")!,UIImage(named: "frame_05_delay-0.12s")!,UIImage(named: "frame_06_delay-0.12s")!,UIImage(named: "frame_07_delay-0.12s")!,UIImage(named: "frame_08_delay-0.12s")!,UIImage(named: "frame_09_delay-0.12s")!,UIImage(named: "frame_10_delay-0.12s")!,UIImage(named: "frame_11_delay-0.12s")!,UIImage(named: "frame_12_delay-0.12s")!,UIImage(named: "frame_13_delay-0.12s")!,UIImage(named: "frame_14_delay-0.12s")!,UIImage(named: "frame_15_delay-0.12s")!,UIImage(named: "frame_16_delay-0.12s")!]
 */
