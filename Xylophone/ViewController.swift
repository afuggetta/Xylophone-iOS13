//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(note: sender.currentTitle!)
        sender.layer.opacity = 0.5
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            print("End")
            sender.layer.opacity = 1
        }
    }
    
    func playSound(note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
                
        player?.play()
    }

}

