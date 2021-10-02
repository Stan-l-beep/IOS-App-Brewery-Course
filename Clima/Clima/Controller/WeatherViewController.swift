//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var SearchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SearchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        SearchTextField.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        SearchTextField.endEditing(true)
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else{
            textField.placeholder = "Type City"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        let cityName = SearchTextField.text!
        print(cityName + "cityName")
        SearchTextField.text = ""
    }
    
}




//2351bf516497bc7e94062a57a5889bc1
//api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
