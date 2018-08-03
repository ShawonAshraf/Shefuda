//
//  ViewController.swift
//  Shefuda
//
//  Created by Shawon Ashraf on 8/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    // MARK: instance methods
    var isPlaying: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Conform to TabelView Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // get row textlabel
        let cell = tableView.cellForRow(at: indexPath)
        let title = cell?.textLabel?.text
        
        // toggle playing state
        if isPlaying {
            SoundPlayerController.soundPlayer.stop()
            isPlaying = !isPlaying
        }
        
        // send title to player
        SoundPlayerController.soundPlayer.play(soundTitle: title!)
        
        // deselect the row
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SoundClipCell")!
        
        cell.textLabel?.text = SoundClipData.soundClips[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SoundClipData.soundClips.count
    }

}

