//
//  eidt View Button.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit

extension ViewController{
    
    func eidtViewButton(){
        ControlView.alpha = 0.7
        ControlView.layer.cornerRadius = 10
        ControlView.backgroundColor = UIColor(red: 252/255, green: 255/255, blue: 255/255, alpha: 1)
        
        SongControlView.alpha = 0.7
        SongControlView.layer.cornerRadius = 50
        SongControlView.backgroundColor = UIColor(red: 252/255, green: 255/255, blue: 255/255, alpha: 1)
        
        VideoControlView.alpha = 0.7
        VideoControlView.layer.cornerRadius = 50
        VideoControlView.backgroundColor = UIColor(red: 252/255, green: 255/255, blue: 255/255, alpha: 1)
    }

}
