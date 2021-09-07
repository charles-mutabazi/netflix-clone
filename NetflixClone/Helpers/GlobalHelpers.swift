//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by charles on 02/09/2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Exciting", "Dark", "Chilling", "Suspensful"],
    rating: "TV-MA",
    year: 2020,
    numberOfSeasons: 3,
    defaultEpisodInfo: exampleEpisodeInfo1, promoHeadline: "Watch Season 3 Now",
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: [
        exampleMovie2,
        exampleMovie3,
        exampleMovie4,
        exampleMovie5,
        exampleMovie6,
        exampleMovie7,
    ]
)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "The Flash",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Exciting", "Chilling", "Suspensful"],
    rating: "13+",
    year: 2019,
    numberOfSeasons: 6,
    defaultEpisodInfo: exampleEpisodeInfo1, quality: "HD",
    promoHeadline: "Watch Season 6 Now",
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: []
)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Zoo",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Exciting","Suspensful"],
    rating: "TV-MA",
    year: 2017,
    numberOfSeasons: 3,
    defaultEpisodInfo: exampleEpisodeInfo1,
    quality: "HD",
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: []
)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Lucifer",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Irrelevant", "Exciting"],
    rating: "18+",
    year: 2020,
    numberOfSeasons: 5,
    defaultEpisodInfo: exampleEpisodeInfo1,
    promoHeadline: "Season 6 Coming on Friday",
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: []
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Van Helsing",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Exciting", "Dark", "Violent"],
    rating: "18+",
    year: 2020,
    numberOfSeasons: 5,
    defaultEpisodInfo: exampleEpisodeInfo1,
    quality: "HD",
    promoHeadline: "Watch the season finale",
    cast: "Kelly Overtone, Jonathan Scarfe, Rukiya Bernard, Trezzo Mahoro",
    creators: "Niel Labute", moreLikethis: []
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Afterlife of the party",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Charming", "Sentimental", "Quirky"],
    rating: "7+",
    year: 2021,
    defaultEpisodInfo: exampleEpisodeInfo1,
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: []
)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Exciting", "Dark", "Chilling", "Suspensful"],
    rating: "TV-MA",
    year: 2020,
    numberOfSeasons: 3,
    defaultEpisodInfo: exampleEpisodeInfo1, promoHeadline: "Watch Season 3 Now",
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: []
)

//shuffle the movies everytime
var exampleMovies: [Movie] {
    return [
        exampleMovie1,
        exampleMovie2,
        exampleMovie3,
        exampleMovie4,
        exampleMovie5,
        exampleMovie6,
        exampleMovie7
    ].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Big Mama",
    description: "Waking from a coma, Vanessa finds lone soldier Axel protecting her from a vampire apocalypse called \"The Rising\" and discovers she has unusual powers.",
    season: 2,
    episode: 8
)

extension LinearGradient {
    static let blackGradientOpacity = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

