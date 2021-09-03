//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by charles on 02/09/2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Exciting", "Dark", "Chilling", "Suspensful"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Exciting", "Dark", "Chilling", "Suspensful"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Exciting", "Dark", "Chilling", "Suspensful"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Exciting", "Dark", "Chilling", "Suspensful"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Exciting", "Dark", "Chilling", "Suspensful"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Exciting", "Dark", "Chilling", "Suspensful"])

let exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6
]

extension LinearGradient {
    static let blackGradientOpacity = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black]),
        startPoint: .top,
        endPoint: .bottom
    )
}

