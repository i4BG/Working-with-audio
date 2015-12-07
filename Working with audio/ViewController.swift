//
//  ViewController.swift
//  Working with audio
//
//  Created by Ivaylo Todorov on 28.11.15 г..
//  Copyright © 2015 г. Ivaylo Todorov. All rights reserved.
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
    
    @IBAction func volume(sender: AnyObject) {
    
        player.volume = slider.value
        
    }
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let audioPath = NSBundle.mainBundle().pathForResource("dalepapi", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            player.play()
            
        } catch {
            
            // process eror here
        
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

