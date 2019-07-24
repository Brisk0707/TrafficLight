//
//  ViewController.swift
//  TrafficLight
//
//  Created by Борис Крисько on 7/23/19.
//  Copyright © 2019 Borys Krisko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var redlightIsOn = false
    var yellowLightisOn = false
    var greenLightIsOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.backgroundColor = UIColor.red
        yellowLight.backgroundColor = UIColor.yellow
        greenLight.backgroundColor = UIColor.green
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if  redlightIsOn == false && yellowLightisOn == false && greenLightIsOn == false {
            redLight.alpha = 1
            redlightIsOn = true
            startButton.setTitle("NEXT", for: .normal)
        } else {
            if redlightIsOn == true {
                yellowLight.alpha = 1
                redLight.alpha = 0.3
                redlightIsOn = false
                yellowLightisOn = true
            } else if yellowLightisOn == true {
                greenLight.alpha = 1
                greenLightIsOn = true
                yellowLight.alpha = 0.3
                yellowLightisOn = false
            } else if greenLightIsOn == true {
                redLight.alpha = 1
                redlightIsOn = true
                greenLight.alpha = 0.3
                greenLightIsOn = false
            }
        }
    }
}

