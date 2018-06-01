//
//  Play Audio.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

extension AVPlayer {
    var isPlaying: Bool {
        return rate != 0 && error == nil
    }
}

extension ViewController {
    func PlayAudio(indexaudio : Int){
        let audioSession = AVAudioSession.sharedInstance()
        do{
            try!audioSession.setCategory(AVAudioSessionCategoryPlayback, with: AVAudioSessionCategoryOptions.interruptSpokenAudioAndMixWithOthers) //Causes audio from other sessions to be ducked (reduced in volume) while audio from this session plays
        }
        indexAudio += 1
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: Songs[indexaudio].assetURL!)
            audioPlayer.prepareToPlay()
            audioPlayer.volume = 1.4
            print(Songs[indexaudio].title)
            audioPlayer.play()
            if (player.isPlaying){
                player.pause()
                player.volume = 0
                player.play()
            }
        }catch{print("s")}
    }
}
