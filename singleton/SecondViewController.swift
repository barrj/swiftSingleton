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
    var mySong:Song = Song()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySong = theSongModel.theSong
        
        theNameField.text = mySong.name
        
    }
    
    // this works because we initialize mySong to an empty Song
    override func viewWillAppear(animated: Bool) {
        if (mySong.name != "none")
        {
            theNameField.text = mySong.name
            
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
        theNameField.resignFirstResponder()
    }
    
    @IBAction func saveSongPressed(sender: UIButton) {
        mySong.name = theNameField.text
    }


}

