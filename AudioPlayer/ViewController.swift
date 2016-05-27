//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Jack Li on 5/27/16.
//  Copyright © 2016 JackAttack. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
    }

    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func adjustVolume(sender: AnyObject) {
            
        player.volume = slider.value
        
    }

    
    var player : AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSBundle.mainBundle().pathForResource("John Legend - All of Me", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            
        } catch {
            
            //Process error
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

