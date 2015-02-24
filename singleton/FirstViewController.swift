//
//  FirstViewController.swift
//  singleton
//
//  Created by John Barr on 2/18/15.
//  Copyright (c) 2015 John Barr. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var songNameField: UITextField!
    
    
    var theSongModel: sharedSongModel = sharedSongModel.theSharedSongModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // this works because we initialize mySong to an empty Song
    override func viewWillAppear(animated: Bool) {
        if (theSongModel.songList.count > 1){
            let index = theSongModel.songList.count - 1
            songNameField.text = theSongModel.songList[index].name
        }
        else{
            songNameField.text = theSongModel.getFirstSongName()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap(sender: UIControl) {
        songNameField.resignFirstResponder()
    }

    @IBAction func saveSongPressed(sender: UIButton) {
        
        var tempSong : Song = Song()
        tempSong.name = songNameField.text
        
        theSongModel.addSong(tempSong)
    }

}

