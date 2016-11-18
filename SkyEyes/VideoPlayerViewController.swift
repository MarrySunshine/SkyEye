//
//  VideoPlayerViewController.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/18.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoPlayerViewController: AVPlayerViewController {
    
    var video: SEVideo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "test", ofType: "mp4")!))
    }
}
