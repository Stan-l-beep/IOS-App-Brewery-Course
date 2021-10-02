//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Stan on 03/08/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController {
    
    var BMIValue = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let BMIlbl = UILabel()
        BMIlbl.text = BMIValue
        BMIlbl.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(BMIlbl)
    }
}
