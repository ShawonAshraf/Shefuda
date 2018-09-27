//
//  SoundPlayerController.swift
//  Shefuda
//
//  Created by Shawon Ashraf on 8/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation
import AVFoundation

final class SoundPlayerController {
    
    // MARK: This class is a singleton
    static let soundPlayer: SoundPlayerController = SoundPlayerController()
    
    // MARK: audioPlayer init
    private var audioPlayer = AVAudioPlayer()
    
    // MARK: Helper methods
    // plays soundclip by title
    func play(soundTitle title: String) {
        if let soundFileURL = getSoundFileURL(title: title) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundFileURL)
                audioPlayer.prepareToPlay()
                
            
                // init audio player session
                let session = AVAudioSession.sharedInstance()
                do {
                    try session.setCategory(.playback, mode: .spokenAudio, options: .defaultToSpeaker)
                } catch let error {
                    print(error)
                }
            } catch let error {
                print(error)
            }
            
            // now play
            audioPlayer.play()
        } else {
            print("File wasn't found!")
        }
    }
    
    // gets soundfile url by title
    func getSoundFileURL(title: String) -> URL? {
        let soundResource = SoundClipData.soundClips[title]

        let file = Bundle.main.path(forResource: soundResource, ofType: SoundClipData.fileExtension)

        if let fileURL = file {
//            print("playing!")
            let url = URL(fileURLWithPath: fileURL)
            return url
        } else {
            print("File doesn't exist!")
            return nil
        }
    }
    
    // stop playing
    func stop() {
        if audioPlayer.isPlaying {
            audioPlayer.stop()
        }
    }
    
}
