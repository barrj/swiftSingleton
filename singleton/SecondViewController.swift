//
//  SecondViewController.swift
//  singleton
//
//  Created by John Barr on 2/18/15.
//  Copyright (c) 2015 John Barr. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var theNameField: UITextField!
    
    var theSongModel: sharedSongModel = sharedSongModel.theSharedSongModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // this works because we initialize mySong to an empty Song
    override func viewWillAppear(animated: Bool) {
        if (theSongModel.songList.count > 1){
            let index = theSongModel.songList.count - 1
            theNameField.text = theSongModel.songList[index].name
        }
        else{
            theNameField.text = theSongModel.getFirstSongName()
        }
        
           // NSLog("Song list name: %@", mySongList[0].name)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap(sender: UIControl) {
        theNameField.resignFirstResponder()
    }
    
    @IBAction func saveSongPressed(sender: UIButton) {
        var tempSong : Song = Song()
        tempSong.name = theNameField.text
        
        theSongModel.addSong(tempSong)
    }


}

