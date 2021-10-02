//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var kiloLbl: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var kiloSlider: UISlider!
        
    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        heightSlider.value = 1.5
        kiloSlider.value = 100
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let userHeight = String(format: "%.2f", sender.value)
        heightLbl.text = "\(userHeight)m"
    }
    @IBAction func kiloSliderChanged(_ sender: UISlider) {
        let userKilos = String(format: "%.0f", sender.value)
        kiloLbl.text = "\(userKilos)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let userHeight = heightSlider.value
        let userKilos = kiloSlider.value
        calculatorBrain.calculateBMI(height : userHeight, kilos: userKilos)
        performSegue(withIdentifier: "goToResult", sender: self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    }

