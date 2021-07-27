//
//  ViewController.swift
//  eggTimer
//
//  Created by Stan Danev on 14/07/2021.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet weak var lblEggzz: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimes : [String : Int] = [ "Soft": 3, "Medium": 4, "Hard": 5 ]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer?
    
    
    
    @IBAction func typeSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        self.progressBar.isHidden = false
        secondsPassed = 0
        lblEggzz.text = hardness
        eggTimer()
    }
    
    
    func eggTimer() {
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsPassed < self.totalTime {
                self.secondsPassed += 1
                self.progressBar.setProgress(Float(self.secondsPassed) / Float(self.totalTime), animated: true)
                self.progressBar.progress = Float(self.secondsPassed) / Float(self.totalTime)
                
                
            } else {
                self.progressBar.isHidden = true
                self.timer.invalidate()
                self.lblEggzz.text = "Done!"
                self.playSound()
                
            }
        }
        
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            player.numberOfLoops = 1
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
    }
    
}

