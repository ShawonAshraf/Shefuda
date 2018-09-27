//
//  SoundPlayerController.swift
//  Shefuda
//
//  Created by Shawon Ashraf on 8/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

final class SoundPlayerController {
    
    // MARK: This class is a singleton
    static let soundPlayer: SoundPlayerController = SoundPlayerController()
    
    // MARK: Helper methods
    // plays soundclip by title
    func play(soundTitle title: String) {
       
    }
    
    // gets soundfile url by title
//    func getSoundFileURL(title: String) -> URL? {
//        let soundResource = SoundClipData.soundClips[title]
//
//        let file = Bundle.main.path(forResource: soundResource, ofType: SoundClipData.fileExtension)
//
//        if let fileURL = file {
//            print("playing!")
//            let url = URL(fileURLWithPath: fileURL)
//            return url
//        } else {
//            print("File doesn't exist")
//            return nil
//        }
//    }
    
    // stop playing
//    func stop() {
//        Sound.stopAll()
//    }
    
}
