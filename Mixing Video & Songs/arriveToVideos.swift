//
//  arriveToVideos.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit
import MediaPlayer
import AVKit

extension ViewController {
    /// To Arrive To Videos In Itunes
    
    func arriveToVideo()
    {
        let mediaTypeNumber = MPMediaType.anyVideo.rawValue
        
        let query = MPMediaQuery()
        
        query.addFilterPredicate(MPMediaPropertyPredicate(value: mediaTypeNumber, forProperty: MPMediaItemPropertyMediaType))
        
        Videos = query.items! as [MPMediaItem]
        for v in Videos {
            if let URL = v.value(forProperty: MPMediaItemPropertyAssetURL)
            {
                ImagesVideos.append(previewImageFromVideo(URL as! URL)!)
            }else{
                print("ERROR ON CHOOSE THE VIDEO")
            }
        }
        
    }
    
    
    /// To Take Screenshot From Which Video Will Play To Display In Collection View
    
    func previewImageFromVideo(_ url:URL) -> UIImage? {
        let asset = AVAsset(url:url)
        let imageGenerator = AVAssetImageGenerator(asset:asset)
        imageGenerator.appliesPreferredTrackTransform = true
        
        var time = asset.duration
        time.value = min(time.value,2)
        
        do{
            let imageRef = try imageGenerator.copyCGImage(at: time, actualTime: nil)
            return UIImage(cgImage: imageRef)
        } catch {
            return nil
        }
    }
}
