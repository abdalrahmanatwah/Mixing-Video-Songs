//
//  Play Video.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

extension ViewController{
    
    func PlayVideo(i : Float = 0){
        
        if let url = Videos[indexVideo].assetURL {
            if player != nil {player.pause()}
            player = AVPlayer(url: url)
            initAspectRatioOfVideo(with: url)
            
            VideoPlayer = AVPlayerViewController()
            VideoPlayer.player = player
            VideoPlayer.showsPlaybackControls = false
            VideoPlayer.view.frame = CGRect(x: 0, y: 0, width: screen.width, height: height)
            VideoPlayer.videoGravity = AVLayerVideoGravityResizeAspect
            
            eidtTheFarme()
            
            self.addChildViewController(VideoPlayer)
            self.view.addSubview(VideoPlayer.view)
            
            if(indexAudio != -1 && audioPlayer.isPlaying ){
                player.volume = 0
            }else{
                player.volume = 1
            }
            player.play()
        }
    }
}
