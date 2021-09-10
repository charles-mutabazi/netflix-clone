//
//  Trailer.swift
//  NetflixClone
//
//  Created by charles on 10/09/2021.
//

import Foundation

struct Trailer: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var imageURL: URL
    var videoURL: URL
}
