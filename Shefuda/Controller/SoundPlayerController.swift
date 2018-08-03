//
//  SoundPlayerController.swift
//  Shefuda
//
//  Created by Shawon Ashraf on 8/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation
import SwiftySound


class SoundPlayerController {
    
    // MARK: This class is a singleton
    
    // plays soundclip by title
    func play(soundTitle title: String) {
        // fetch sound URL
        if let soundURL = getSoundFileURL(title: title) {
            Sound.play(url: soundURL)
        } else {
            print("File doesn't exist")
        }
        
    }
    
    // gets soundfile url by title
    func getSoundFileURL(title: String) -> URL? {
        // fetch from static array
        let index = SoundClipData.soundClips.index(of: title)!
        let soundResource = SoundClipData.soundClips[index]
        
        let file = Bundle.main.path(forResource: soundResource, ofType: SoundClipData.fileExtension)
        
        if let fileURL = file {
            print("playing!")
            let url = URL(fileURLWithPath: fileURL)
            return url
        } else {
            print("File doesn't exist")
            return nil
        }
    }
    
}
