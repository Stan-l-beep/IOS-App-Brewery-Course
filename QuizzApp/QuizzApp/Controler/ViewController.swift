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
    @IBOutlet weak var scoreLbl: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! //true or false
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            print("Right")
            sender.setTitleColor(UIColor.green, for: .normal)

            
        } else{
            print("Wrong")
            sender.setTitleColor(UIColor.red, for: .normal)
            
            
        }
        quizBrain.nextQuestion() 
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    
    @objc func updateUI() {
        
        questionLbl.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLbl.text = "Score: \(quizBrain.getScore())"
        btnTrue.setTitleColor(UIColor.white, for: .normal)
        btnFalse.setTitleColor(UIColor.white, for: .normal)

    }
    
}

