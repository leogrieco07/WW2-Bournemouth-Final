//
//  MetropoleVidViewController.swift
//  WW2 Bournemouth
//
//  Created by Leonardo Grieco (s5110005) on 13/01/2020.
//  Copyright © 2020 Leonardo Grieco (s5110005). All rights reserved.
//

import Foundation
import AVFoundation
import AVKit

class MetropoleVidViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
}
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "MetropoleVid", ofType: "Metropole Edited.mp4") else{
            debugPrint("Metropole Interview Not Found")
            return
        }
        let player = AVPlayer(url:https:bc3-production-us-east-2.s3.us-east-2.amazonaws.com/o7qt3hwenwb1jz7d2fm22eswiezk?response-content-disposition=attachment%3B%20filename%3D%22metropole%20edited.mp4%22%3B%20filename%2A%3DUTF-8%27%27metropole%2520edited.mp4&response-content-type=video%2Fmp4&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJA4YU4LL6QTTS55A%2F20200113%2Fus-east-2%2Fs3%2Faws4_request&X-Amz-Date=20200113T145750Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=311a0f341334a0c650bd0c49391e2350db7024503eca179e2897c6b28afa6aeb)
        let playerController = AVPlayerViewController()
        playerController.PLAYER = player
        present(playerController, animated: true){
            player.play()
        }
}

    
    
}
