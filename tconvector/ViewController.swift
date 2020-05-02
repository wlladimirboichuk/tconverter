//
//  ViewController.swift
//  tconvector
//
//  Created by Volodymyr Boichuk on 02.05.2020.
//  Copyright © 2020 Volodymyr Boichuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {

    didSet {
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = 0
    }
    }
    
    
    // Code for label.
    
    @IBAction func sliderChenged(_ sender: UISlider) {
        let temperatureCelsius = Int (round(sender.value))
        canliusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
}

