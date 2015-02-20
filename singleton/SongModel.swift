//
//  SongModel.swift
//  Songs
//
//  Created by Evan Sobkowicz on 2/1/15.
//  Modifies by John Barr on 2/18/15
//  Copyright (c) 2015 Evan Sobkowicz. All rights reserved.
//

import Foundation


class Song {
    
    var name: String
    let artist: String
    let album: String
    let year: Int
    let composer: String
    let length: Float
    
    /* Default initializer
    */
    init(){
        self.name = "none"
        self.artist = "none"
        self.album = "none"
        self.year = 2000
        self.composer = "none"
        self.length = 0.0
    }
}