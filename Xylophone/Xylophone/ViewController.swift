//
//  ViewController.swift
//  Xylophone
//
//  Created by Stan Danev on 14/07/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(btnPressed: sender.currentTitle!)
        let seconds = 0.2
        UIView.animate(withDuration: seconds) {
            sender.alpha = 0.7
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + seconds ) {
            UIView.animate(withDuration: seconds) {
                sender.alpha = 1.0
            }
        }
    }
    
    func playSound(btnPressed: String) {
        let url = Bundle.main.url(forResource: btnPressed, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
