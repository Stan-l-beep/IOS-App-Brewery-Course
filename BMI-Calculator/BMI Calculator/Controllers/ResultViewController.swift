//
//  ResultVIewControllerViewController.swift
//  BMI Calculator
//
//  Created by Stan on 03/08/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var BMIValue: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var BMILbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILbl.text = BMIValue
        adviceLbl.text = advice
        view.backgroundColor = color
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    

}
