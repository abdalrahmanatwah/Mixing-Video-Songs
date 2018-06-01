//
//  getAllMusic.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit
import MediaPlayer

extension ViewController {
    func getAllMusic(){
        let query = MPMediaQuery()
        if let result = query.items {
            for  i in result {
                let s = String(describing: i.assetURL)
                let w = s.components(separatedBy: "/")
                let wd = w[w.count-1].components(separatedBy: "?")
                let wds = wd[0].components(separatedBy: ".")
                let wdsa = wds[wds.count-1]//mp3
                if wdsa == "mp3" || wdsa == "wav" || wdsa == "aiff"{
                    Songs.append(i)
                }
            }
        }
    }
}
