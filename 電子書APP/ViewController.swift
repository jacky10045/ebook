//
//  ViewController.swift
//  電子書APP
//
//  Created by Zonghan on 2018/4/6.
//  Copyright © 2018年 Zonghan. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var backGround:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let audiopath = Bundle.main.path(forResource: "Music", ofType: "mp3")
            try backGround = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!) as URL)
            
        }
        catch{
            
        }
        let session = AVAudioSession.sharedInstance()
        do{
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch{
            
        }
        backGround.numberOfLoops = -1
        backGround.prepareToPlay()
        backGround.play()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
 }

