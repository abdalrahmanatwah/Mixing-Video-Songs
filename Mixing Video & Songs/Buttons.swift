//
//  MainPage.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit


extension ViewController {
    
    func eidtTheFram(x : CGFloat , y : CGFloat){
        
        let color = UIColor.black
        // Songs Button
        
        let FramSongsButton = CGRect(x: 6, y: 0, width: (x/2), height: y)
        let SongsButton = UIButton(frame: FramSongsButton)
        
        SongsButton.setTitle("Songs", for: .normal)
        SongsButton.setTitleColor(color, for: .normal)
        SongsButton.titleLabel?.font = UIFont(name: "Georgia-Bold", size: 25)
        SongsButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        SongsButton.backgroundColor = UIColor(red: 252/255, green: 255/255, blue: 255/255, alpha: 0.8)
        SongsButton.addTarget(self, action: #selector(SongsButtonAction), for: .touchUpInside)
        
        ControlView.addSubview(SongsButton)
//        // Player Button
//        
//        let FramPlayerButton = CGRect(x: x/3, y: 0, width: (x/3), height: y)
//        let PlayerButton = UIButton(frame: FramPlayerButton)
//        PlayerButton.setTitleColor(color, for: .normal)
//        PlayerButton.setTitle("Player", for: .normal)
//        PlayerButton.titleLabel?.font = UIFont(name: "Georgia-Bold", size: 25)
//        PlayerButton.titleLabel?.adjustsFontSizeToFitWidth = true
//        PlayerButton.backgroundColor = UIColor(red: 252/255, green: 255/255, blue: 255/255, alpha: 0.8)
//        PlayerButton.addTarget(self, action: #selector(PlayerButtonAction), for: .touchUpInside)
//        ControlView.addSubview(PlayerButton)
        
        
        // Videos Button
        
        let FramVideosButton = CGRect(x: ((x/3)*2), y: 0, width: (x/2)-6, height: y)
        let VideosButton = UIButton(frame: FramVideosButton)
        VideosButton.setTitle("Videos", for: .normal)
        VideosButton.setTitleColor(color, for: .normal)
        VideosButton.titleLabel?.font = UIFont(name: "Georgia-Bold", size: 25)
        VideosButton.titleLabel?.adjustsFontSizeToFitWidth = true
        VideosButton.backgroundColor = UIColor(red: 252/255, green: 255/255, blue: 255/255, alpha: 0.8)
        VideosButton.addTarget(self, action: #selector(VideosButtonAction), for: .touchUpInside)
        
        ControlView.addSubview(VideosButton)
    }
    
    // Buttons Action
    
    func SongsButtonAction(sender: UIButton!){
        if (CollView.isHidden){
            table.isHidden = false
        }else{
            CollView.isHidden = true
            table.isHidden = false
        }
        BackGroundImage.isHidden = false
    }
    
    func PlayerButtonAction(sender: UIButton!){
        table.isHidden =  true
        CollView.isHidden = true
    }
    
    func VideosButtonAction(sender: UIButton!){
        
        if (table.isHidden){
            CollView.isHidden  = false
        }else{
            table.isHidden =  true
            CollView.isHidden = false
        }
        BackGroundImage.isHidden = false
    }
    
}


