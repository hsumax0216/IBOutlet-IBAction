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
    @IBOutlet var segmentControlOut: UISegmentedControl!
    @IBOutlet var dollarInChinese: UILabel!
    @IBOutlet var datePickerOut: UIDatePicker!
    @IBOutlet var dateText: UITextField!
    @IBOutlet var TodayLabelOut: UILabel!
    @IBOutlet var randomSwitchingOut: UISwitch!
    
    private var GIFspeed:Double=2.5
    private var images = [UIImage(named: "frame_00_delay-0.2s")!, UIImage(named: "frame_01_delay-0.2s")!, UIImage(named: "frame_02_delay-0.2s")!, UIImage(named: "frame_03_delay-0.2s")!, UIImage(named: "frame_04_delay-0.2s")!, UIImage(named: "frame_05_delay-0.2s")!, UIImage(named: "frame_06_delay-0.2s")!, UIImage(named: "frame_07_delay-0.2s")!, UIImage(named: "frame_08_delay-0.2s")!, UIImage(named: "frame_09_delay-0.2s")!, UIImage(named: "frame_10_delay-0.2s")!, UIImage(named: "frame_11_delay-0.2s")!, UIImage(named: "frame_12_delay-0.2s")!, UIImage(named: "frame_13_delay-0.2s")!, UIImage(named: "frame_14_delay-0.2s")!, UIImage(named: "frame_15_delay-0.2s")!, UIImage(named: "frame_16_delay-0.2s")!, UIImage(named: "frame_17_delay-0.2s")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*var image:[UIImage]=[]
        for i in 0...16
        {
            image.append(UIImage(named: "frame_"+String(i)+"_delay-0.2s")!)
        }*/
        let animatedImage = UIImage.animatedImage(with: images, duration: GIFspeed)
        freedomMan.image = animatedImage
        slider1out.value=Float(GIFspeed)
        text2.text = String(format: "X%.1f", 1/slider1out.value+0.6 )        //var timer=Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true){(timer) in self.displayNextImage()}
        datePickerOut.date = Date()
        let dateValue = DateFormatter()
        dateValue.dateFormat = "MM dd EE HH:mm" // 設定要顯示在Text Field的日期時間格式
        dateText.text=dateValue.string(from: datePickerOut.date)
    }
    
    func displayNextImage(){}
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        var speed=2.5
        switch(sender.selectedSegmentIndex){
        case 0:
            images = [UIImage(named: "frame_00_delay-0.2s")!, UIImage(named: "frame_01_delay-0.2s")!, UIImage(named: "frame_02_delay-0.2s")!, UIImage(named: "frame_03_delay-0.2s")!, UIImage(named: "frame_04_delay-0.2s")!, UIImage(named: "frame_05_delay-0.2s")!, UIImage(named: "frame_06_delay-0.2s")!, UIImage(named: "frame_07_delay-0.2s")!, UIImage(named: "frame_08_delay-0.2s")!, UIImage(named: "frame_09_delay-0.2s")!, UIImage(named: "frame_10_delay-0.2s")!, UIImage(named: "frame_11_delay-0.2s")!, UIImage(named: "frame_12_delay-0.2s")!, UIImage(named: "frame_13_delay-0.2s")!, UIImage(named: "frame_14_delay-0.2s")!, UIImage(named: "frame_15_delay-0.2s")!, UIImage(named: "frame_16_delay-0.2s")!, UIImage(named: "frame_17_delay-0.2s")!]
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
        slider1out.value=Float(speed)
        text2.text = String(format: "X%.1f", 1/slider1out.value+0.6)
        let animatedImage = UIImage.animatedImage(with: images, duration: speed)
        freedomMan.image = animatedImage
        
    }
    @IBAction func Actionfunc(_ sender: Any) {
        if let input=text1.text,var _number = Double(input){
            switch(segmentControlOut.selectedSegmentIndex){
            case 0:
                dollarInChinese.text="美元"
                _number/=30.8442059
                break
            case 1:
                dollarInChinese.text="日幣"
                _number/=0.276734215
                break
            case 2:
                dollarInChinese.text="人民幣"
                _number/=4.59079552
                break
            default:
                print("ERROR")
            }
            show1.text = String(format: "%.2f", _number )
        }
        view.endEditing(true)
    }
    
    @IBAction func slider1(_ sender: Any) {
        //slider1out.value=Float(GIFspeed)
        GIFspeed=Double(slider1out.value)
        let animatedImage = UIImage.animatedImage(with: images, duration: GIFspeed)
        freedomMan.image = animatedImage
        text2.text = String(format: "X%.1f", 1/slider1out.value+0.6 )
    }
    
    @IBAction func randomSwitching(_ sender: UISwitch) {
        //sender.isOn
        if(sender.isOn)
        {
            let datE=datePickerOut.date
            print(datE)
            TodayLabelOut.text="random Add"
            //BackTodayOut.titleLabel!.text="random Add"
        }
        else
        {
            TodayLabelOut.text="Today"
        }
        /*let dateValue = DateFormatter()
        dateValue.dateFormat = "MM dd EE HH:mm" // 設定要顯示在Text Field的日期時間格式
        dateText.text=dateValue.string(from: datePickerOut.date)*/
    }
    
    @IBAction func BackToday(_ sender: Any) {
        if(randomSwitchingOut.isOn)
        {
            let number=Double.random(in: -99999...100000)
            datePickerOut.date.addTimeInterval(number)
        }
        else
        {
            datePickerOut.date=Date()
        }
        let dateValue = DateFormatter()
        dateValue.dateFormat = "MM dd EE HH:mm" // 設定要顯示在Text Field的日期時間格式
        dateText.text=dateValue.string(from: datePickerOut.date)
    }
    /*@IBAction func datePickerFunc(_ sender: UIDatePicker) {
        let dateValue = DateFormatter()
        dateValue.dateFormat = "MM dd EE HH:mm" // 設定要顯示在Text Field的日期時間格式
        
    }*/
    
    /*@IBAction func dollarConvert(_ sender: UISegmentedControl) {
        if let input=text1.text,var _number = Double(input){
            switch(segmentControlOut.selectedSegmentIndex){
            case 0:
                dollarInChinese.text="美元"
                _number/=30.8442059
                break
            case 1:
                dollarInChinese.text="日幣"
                _number/=0.276734215
                break
            case 2:
                dollarInChinese.text="人民幣"
                _number/=4.59079552
                break
            default:
                print("ERROR")
            }
            show1.text = String(format: "%.2f", _number )
        }
        //view.endEditing(true)
        
    }*/
}

/*
 let images = [UIImage(named: "frame_00_delay-0.05s")!,UIImage(named: "frame_01_delay-0.05s")!, UIImage(named: "frame_02_delay-0.05s")!, UIImage(named: "frame_03_delay-0.05s")!, UIImage(named: "frame_04_delay-0.05s")!, UIImage(named: "frame_05_delay-0.05s")!, UIImage(named: "frame_06_delay-0.05s")!, UIImage(named: "frame_07_delay-0.05s")!, UIImage(named: "frame_08_delay-0.05s")!, UIImage(named: "frame_09_delay-0.05s")!, UIImage(named: "frame_10_delay-0.05s")!, UIImage(named: "frame_11_delay-0.05s")!, UIImage(named: "frame_12_delay-0.05s")!, UIImage(named: "frame_13_delay-0.05s")!, UIImage(named: "frame_14_delay-0.05s")!, UIImage(named: "frame_15_delay-0.05s")!, UIImage(named: "frame_16_delay-0.05s")!, UIImage(named: "frame_17_delay-0.05s")!, UIImage(named: "frame_18_delay-0.05s")!, UIImage(named: "frame_19_delay-0.05s")!, UIImage(named: "frame_20_delay-0.05s")!, UIImage(named: "frame_21_delay-0.05s")!, UIImage(named: "frame_22_delay-0.05s")!, UIImage(named: "frame_23_delay-0.05s")!, UIImage(named: "frame_24_delay-0.05s")!, UIImage(named: "frame_25_delay-0.05s")!, UIImage(named: "frame_26_delay-0.05s")!]
 */
/*
 let images = [UIImage(named: "frame_00_delay-0.12s")!,UIImage(named: "frame_01_delay-0.12s")!,UIImage(named: "frame_02_delay-0.12s")!,UIImage(named: "frame_03_delay-0.12s")!,UIImage(named: "frame_04_delay-0.12s")!,UIImage(named: "frame_05_delay-0.12s")!,UIImage(named: "frame_06_delay-0.12s")!,UIImage(named: "frame_07_delay-0.12s")!,UIImage(named: "frame_08_delay-0.12s")!,UIImage(named: "frame_09_delay-0.12s")!,UIImage(named: "frame_10_delay-0.12s")!,UIImage(named: "frame_11_delay-0.12s")!,UIImage(named: "frame_12_delay-0.12s")!,UIImage(named: "frame_13_delay-0.12s")!,UIImage(named: "frame_14_delay-0.12s")!,UIImage(named: "frame_15_delay-0.12s")!,UIImage(named: "frame_16_delay-0.12s")!]
 */
//0409 usd 30.41 jpy 0.2674 cny 4.489
//0403 usd 30.39 jpy 0.267 cny 4.494
//0311 usd 30.48 jpy 0.2684 cny 4.492
