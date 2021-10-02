//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Stan on 13/09/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var billTotal: String?
    var tip: Double?
    var people: Int?
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var settingsLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLbl.text = billTotal
        settingsLbl.text = "Split between \(people!) with a \(Int(tip!*100))% tip."
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
