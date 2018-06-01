//
//  ViewController.swift
//  Mix_vm
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import MediaPlayer

class ViewController: UIViewController  {
    
    @IBOutlet weak var M: UIView! // The place the video will play in it.
    @IBOutlet weak var CollView: UICollectionView!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var BackGroundImage: UIImageView!
    @IBOutlet weak var imagee: UIImageView!
    
    var Videos : [MPMediaItem] = [] // To save the videos from itunes videos.
    var Songs : [MPMediaItem] = [] // To save the songs from Divecs Songs.
    var ImagesVideos : [UIImage] = []// to save the screenshots from all video.
    
    var indexVideo = -1 // The index for video was user select in collection view.
    var indexAudio = -1 // The index for song was user select in table view.
    
    var widthForVideo : CGFloat = 0 // width For Video Will Play
    var heightForVideo : CGFloat = 0 // height For Video Will Play

    var screen = UIScreen.main.bounds
    var height = UIScreen.main.bounds.width * 9 / 16  //16 x 9 is the aspect ratio of all HD videos


    var OriganlHeigh : CGFloat!
    var OriganlWidth : CGFloat!
    let ControlView = UIView()
    
    var audioPlayer = AVAudioPlayer()
    var VideoPlayer = AVPlayerViewController()
    var player = AVPlayer()

    let SongControlView = UIView()
    let VideoControlView = UIView()
    
    override func viewDidLoad(){
        super.viewDidLoad()
       
        print("The Match Started")

        table.layer.cornerRadius = 10
        CollView.layer.cornerRadius = 10
        CollView.isHidden = true
        table.isHidden = true
        
        getAllMusic()
        arriveToVideo()
        eidtTheFarme()
        eidtTheFram(x: OriganlWidth, y: OriganlHeigh)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}

