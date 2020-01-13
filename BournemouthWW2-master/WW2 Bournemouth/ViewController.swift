//
//  ViewController.swift
//  WW2 Bournemouth
//
//  Created by Leonardo Grieco (s5110005) on 09/12/2019.
//  Copyright © 2019 Leonardo Grieco (s5110005). All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()

    @IBOutlet weak var ExploreButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sound = Bundle.main.path(forResource: "Air-Raid", ofType: "flac")
        let sound2 = Bundle.main.path(forResource: "sirens", ofType: "mp3")
        let sound3 = Bundle.main.path(forResource: "airplane", ofType: "wav")
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
            audioPlayer3 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound3!))        }
        catch{
            print(error)
        }

        }
       @IBAction func AirRaidButton(_ sender: Any) {
        audioPlayer.play()
        
    }
    

    @IBAction func AirplaneButton(_ sender: Any) {
        audioPlayer3.play()
        
    }
    
    @IBAction func AftermathButton(_ sender: Any) {
        audioPlayer2.play()
        
    }
}
