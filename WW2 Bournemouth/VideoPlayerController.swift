//
//  BealesVidViewController.swift
//  WW2 Bournemouth
//
//  Created by Leonardo Grieco (s5110005) on 13/01/2020.
//  Copyright © 2020 Leonardo Grieco (s5110005). All rights reserved.
//

import Foundation
import AVFoundation
import AVKit

class VideoPlayerController: UIViewController {
    
    var videoName = "Holdenhurst"
    
  
    //var to test if the video has been presented
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
  
    private func playVideo() {
      
        guard let path = Bundle.main.path(forResource: "Holdenhurst", ofType: "mp4") else{
            debugPrint("Interview Not Found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
}

    
    
}
