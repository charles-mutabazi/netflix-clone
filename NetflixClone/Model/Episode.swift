//
//  Episode.swift
//  NetflixClone
//
//  Created by charles on 06/09/2021.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailURL: URL
    var description: String
    var length: Int
    
    var videoURL: URL
    
//    var thumbnailURL: URL {
//        return URL(string: thumbnailImageUrlString)!
//    }
}
