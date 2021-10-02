//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Stan on 03/08/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    
    mutating func getBMIValue() -> String {
        let  BMIValue = String(format: "%.2f", ceil((bmi?.value ?? 0.0)*100)/100)
       return BMIValue
   }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    
    mutating func calculateBMI(height: Float, kilos: Float) {
       let BMIValue = kilos / pow(height, 2)
//
        
        if BMIValue < 18.5{
            bmi = BMI(value: BMIValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if BMIValue < 24.9 {
            bmi = BMI(value: BMIValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
            bmi = BMI(value: BMIValue, advice: "Eat less pies...", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }

}
