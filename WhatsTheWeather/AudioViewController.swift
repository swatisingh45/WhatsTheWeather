//
//  AudioViewController.swift
//  WhatsTheWeather
//
//  Created by Swati Singh on 20/06/18.
//  Copyright © 2018 Swati Singh. All rights reserved.
//

import UIKit
import AVFoundation
class AudioViewController: UIViewController {
    
    @IBAction func playButton(_ sender: Any) {
        // Just the play the audio here
        player.play()
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        
    //Pause the audio here
        player.pause()
    }
    
    
    
    
    @IBAction func volumeSlider(_ sender: Any) {
        // Adjust the volume here
        
        
    }
    
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
// creating the path for the audio file
        let audioPath = Bundle.main.path(forResource: "Matoma & The Vamps - Staying Up - MP3 320", ofType: "mp3")
      
        
         do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            
        } catch {
            
            //Process any errors
            
        } 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
