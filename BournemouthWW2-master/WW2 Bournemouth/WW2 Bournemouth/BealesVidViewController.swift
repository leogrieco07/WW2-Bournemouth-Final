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

class BealesVidViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
}
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "Beales Vid", ofType: "Beales Edited.mp4") else{
            debugPrint("Beales Interview Not Found")
            return
        }
        let player = AVPlayer(url:https:bc3-production-us-east-2.s3.us-east-2.amazonaws.com/znums32enlk0pnm4wb3t2sbk0beh?response-content-disposition=attachment%3B%20filename%3D%22beales%20edited.mp4%22%3B%20filename%2A%3DUTF-8%27%27beales%2520edited.mp4&response-content-type=video%2Fmp4&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJA4YU4LL6QTTS55A%2F20200113%2Fus-east-2%2Fs3%2Faws4_request&X-Amz-Date=20200113T150154Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7cbf459225b724457e0b724f0a837f837fdd38725a234f78a08994f24a2dac59)
        let playerController = AVPlayerViewController()
        playerController.PLAYER = player
        present(playerController, animated: true){
            player.play()
        }
}

    
    
}
