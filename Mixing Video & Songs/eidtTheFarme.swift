//
//  eidtTheFarme.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit

extension ViewController {

    // here I use the rect to give all item his frame Manual.
    // I also use constraints but in storyboard
    
    func eidtTheFarme(){
        
        screen = UIScreen.main.bounds
        height = screen.width * 9 / 16
        
        let screenWidth = screen.width
        let screenheight = screen.height
        let Barheight = height * (15/100)
        BackGroundImage.frame = CGRect(x: 0, y: height, width: screenWidth, height: screenheight-height)
        
        CollView.frame = CGRect(x: 0, y: height+Barheight+5, width: screenWidth, height: screenheight-(height+Barheight))
        
        table.frame = CGRect(x: 20, y: height+Barheight+8+20, width: screenWidth-40, height: screenheight-(height+Barheight)-40)
        
        M.frame = CGRect(x: 0, y: 0, width: screenWidth, height: height)
        imagee.frame = CGRect(x: 0, y: 0, width: screenWidth, height: height)
        ControlView.frame = CGRect(x: 20, y: height+8, width: screenWidth-40, height: Barheight-10)
        
        
        SongControlView.frame = CGRect(x: 20, y: height+8, width: screenWidth-40, height: Barheight)
        VideoControlView.frame = CGRect(x: 20, y: height+8, width: screenWidth-40, height: Barheight)
        
        OriganlHeigh = ControlView.frame.height
        OriganlWidth = ControlView.frame.width
        
        eidtViewButton()
        view.addSubview(ControlView)
        
        M.setNeedsDisplay()
        CollView.setNeedsDisplay()
        SongControlView.setNeedsDisplay()
        VideoControlView.setNeedsDisplay()
        table.setNeedsDisplay()
        ControlView.setNeedsDisplay()
    }

}
