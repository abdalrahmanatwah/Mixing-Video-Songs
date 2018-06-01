//
//  getTheVideoSize.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


extension ViewController {
    
    /// To Get The Size For Video
    func initAspectRatioOfVideo(with fileURL: URL) {
        let resolution = resolutionForLocalVideo(url: fileURL)
        
        widthForVideo = (resolution?.width)!
        heightForVideo = (resolution?.height)!
        
    }
    func resolutionForLocalVideo(url: URL) -> CGSize? {
        guard let track = AVURLAsset(url: url).tracks(withMediaType: AVMediaTypeVideo).first else { return nil }
        let size = track.naturalSize.applying(track.preferredTransform)
        return CGSize(width: fabs(size.width), height: fabs(size.height))
    }
    
}

