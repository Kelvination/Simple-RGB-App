//
//  ViewController.swift
//  RGBApp
//
//  Created by Kelvin Newton on 10/11/15.
//  Copyright © 2015 Kelvin Newton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var r = Float(255.0)
    var g = Float(255.0)
    var b = Float(255.0)
    
    @IBOutlet weak var rgbLabel: UILabel!
    
    @IBOutlet weak var hexLabel: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBAction func redSlider(sender: UISlider) {
        r = sender.value
        updateColor()
        updateLabel()
        
    }
    
    @IBAction func greenSlider(sender: UISlider) {
        g = sender.value
        updateColor()
        updateLabel()
    }
    
    @IBAction func blueSlider(sender: UISlider) {
        b = sender.value
        updateColor()
        updateLabel()
    }
    
    func updateColor() {
        self.view.backgroundColor = UIColor(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
    }
    
    func updateLabel() {
        let rInt = Int(r)
        let gInt = Int(g)
        let bInt = Int(b)
        rgbLabel.text = "Red: \(rInt), Green: \(gInt), Blue: \(bInt)"
        let rInverse = 255 - r
        let gInverse = 255 - g
        let bInverse = 255 - b
        rgbLabel.textColor = UIColor(red: CGFloat(rInverse)/255, green: CGFloat(gInverse)/255, blue: CGFloat(bInverse)/255, alpha: 1.0)
        
        hexLabel.textColor = UIColor(red: CGFloat(rInverse)/255, green: CGFloat(gInverse)/255, blue: CGFloat(bInverse)/255, alpha: 1.0)
        
        let hex = "Hex: #" + String(format:"%02X", rInt) + String(format:"%02X", gInt) +  String(format:"%02X", bInt)
        hexLabel.text = hex
        
    }
    
    
    override func viewDidLoad() {
        updateColor()
        updateLabel()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

