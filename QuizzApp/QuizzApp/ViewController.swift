//
//  ViewController.swift
//  QuizzApp
//
//  Created by Stan Danev on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var btnTrue: UIButton!
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    struct question {
        let question = "4 + 2 = 6"
    }
    let quizz = [
        ["4 + 2 = 6", "True"],
        ["8 - 9 > -5", "True"],
        ["154877 = 0", "False"]
    ]

    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //true or false
        let actualAnswer = quizz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else{
            print("Wrong")
        }
        if questionNumber + 1 < quizz.count{
            questionNumber += 1
            
        } else{
            questionNumber = 0
        
        }
        updateUI()
    }
    func updateUI() {
        
        questionLbl.text = quizz[questionNumber][0]
        
    }
    
}

