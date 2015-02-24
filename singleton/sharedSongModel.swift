//
//  sharedSongModel.swift
//  singleton
//
//  Created by John Barr on 2/18/15.
//  Copyright (c) 2015 John Barr. All rights reserved.
//

import Foundation

private let _songModelSharedInstance = sharedSongModel()

class sharedSongModel {
    
    var songList: [Song]
    
   init(){
        songList = [Song]()
    // start with an empty song in the list
        songList.append(Song())
    }
    
    func addSong(newSong:Song){
        songList.append(newSong)
    }
    
    func getFirstSongName()->NSString{
        return songList[0].name
    }
    
    class var theSharedSongModel: sharedSongModel {
        return _songModelSharedInstance
    }
}