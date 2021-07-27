//
//  ViewController.swift
//  Magic StanBall
//
//  Created by Stan Danev on 07/07/2021.
//

import UIKit

class ViewController: UIViewController {
let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png"),#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func AskButtonPressed(_ sender: UIButton) {
        imageView.image = ballArray[Int.random(in: 0 ... 10)]
    }


}

