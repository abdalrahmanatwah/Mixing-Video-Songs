//
//  CollectionView.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollView.dequeueReusableCell(withReuseIdentifier: "Video", for: indexPath) as! CellCollVideo
        
        cell.photo.image = ImagesVideos[indexPath.row]
        cell.layoutSubviews()
        cell.layer.cornerRadius = 10
        cell.clipsToBounds = true
        
        cell.photo.layoutSubviews()
        cell.photo.layer.cornerRadius = 10
        cell.photo.layer.borderWidth = 2
        cell.photo.layer.borderColor = UIColor.gray.cgColor
        cell.photo.clipsToBounds = true
        
        cell.nameForVideo.text = Videos[indexPath.row].title
        cell.nameForVideo.layoutSubviews()
        
        let f = cell.photo.frame
        let r = cell.frame
        
        cell.photo.frame = CGRect(x: 5, y: 3, width: f.width, height: r.height * (3/4))
        cell.nameForVideo.frame = CGRect(x: 2, y: f.height+2, width: r.width, height: r.height * (1/4)-4)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        indexVideo = indexPath.row
        imagee.isHidden = true
        PlayVideo()
    }
    
}


