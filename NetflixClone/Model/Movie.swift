//
//  Movie.swift
//  NetflixClone
//
//  Created by charles on 02/09/2021.
//

import Foundation
struct Movie : Identifiable{
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
}
