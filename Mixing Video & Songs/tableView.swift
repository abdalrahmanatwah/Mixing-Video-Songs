//
//  tableView.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let a = cell.frame.height
        let b = cell.frame.width * (1/10)
        
        cell.index.frame = CGRect(x: 3, y: 0, width: b/2, height: a)
        cell.name.frame = CGRect(x: (b/2)+3, y: 0, width: (5*b)+(b/2) , height: a)
        cell.SongerName.frame = CGRect(x: (5*b)+6 , y: 0, width: 3*b , height: a)
        cell.time.frame = CGRect(x: (9*b)+9, y: 0, width: b , height: a)
        
        
        cell.index.text = String(" \(indexPath.row+1)")
        if let tit = Songs[indexPath.row].title {
            cell.name.text = "\(tit)"
        }
        cell.SongerName.text = Songs[indexPath.row].albumTitle
        let h = getHoursMinutesSecondsFrom(seconds: Songs[indexPath.row].playbackDuration).hours
        let m = getHoursMinutesSecondsFrom(seconds: Songs[indexPath.row].playbackDuration).minutes
        let s = getHoursMinutesSecondsFrom(seconds: Songs[indexPath.row].playbackDuration).seconds
        
        cell.time.text = String("\(h):\(m):\(s)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        PlayAudio(indexaudio: indexPath.row)
    }
    
}


