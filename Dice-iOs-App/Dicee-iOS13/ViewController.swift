//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Declaring and assigning a name to an image view so it can be edited
    @IBOutlet weak var diceImgView1: UIImageView!
    @IBOutlet weak var diceImgView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let DiceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        //When pressing the button a random element is selected from
        //the array and then shown in the Image View
        diceImgView1.image = DiceArray.randomElement()
        diceImgView2.image = DiceArray.randomElement()
        
    }
    

}

