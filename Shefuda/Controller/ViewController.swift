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

        // send title to player
        do {
            try SoundPlayerController.instance.play(soundTitle: title!)
        } catch {
            // show an alert
            let alert = UIAlertController(title: "এটা বলা যাচ্ছে না", message: "কোন হারামজাদা যেন ফাইলটা চুরি করেছে!", preferredStyle: .alert)
            let action = UIAlertAction(title: "ধুর বাল!", style: .default) { (_) in
                // do nothing
            }
            alert.addAction(action)
            
            // present
            present(alert, animated: true, completion: nil)
        }
        
        // deselect the row
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SoundClipCell")!
        
        // get all keys as an array
        let keys = Array(SoundClipData.soundClips.keys)
        cell.textLabel?.text = keys[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SoundClipData.soundClips.count
    }

}

