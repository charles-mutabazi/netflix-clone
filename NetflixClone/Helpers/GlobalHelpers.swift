//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by charles on 02/09/2021.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_640x360.m4v")!

let exampleImageURL1 = URL(string: "https://picsum.photos/300/150")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/152")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/151")!
let exampleImageURL4 = URL(string: "https://picsum.photos/300/153")!
let exampleImageURL5 = URL(string: "https://picsum.photos/300/154")!

let exampleTrailer1 = Trailer(title: "Season 5 Trailer: Van Helsing", imageURL: exampleImageURL1, videoURL: exampleVideoURL)
let exampleTrailer2 = Trailer(title: "Season 4 Trailer: Van Helsing", imageURL: exampleImageURL2, videoURL: exampleVideoURL)
let exampleTrailer3 = Trailer(title: "Season 3 Trailer: Van Helsing", imageURL: exampleImageURL3, videoURL: exampleVideoURL)
let exampleTrailer4 = Trailer(title: "Season 2 Trailer: Van Helsing", imageURL: exampleImageURL4, videoURL: exampleVideoURL)
let exampleTrailer5 = Trailer(title: "Season 1 Trailer: Van Helsing", imageURL: exampleImageURL5, videoURL: exampleVideoURL)

var exampleTrailers: [Trailer] {
    [
        exampleTrailer1,
        exampleTrailer2,
        exampleTrailer3,
        exampleTrailer4,
        exampleTrailer5,
    ].shuffled()
}

let episode1 = Episode(
    name: "Help Me",
    season: 1,
    episodeNumber: 1, thumbnailURL: exampleImageURL1,
    description: "Waking from a coma, Vanessa finds lone soldier Axel protecting her from a vampire apocalypse called \"The Rising\" and discovers she has unusual powers.",
    length: 44,
    videoURL: exampleVideoURL
)

let episode2 = Episode(
    name: "Seen You",
    season: 1,
    episodeNumber: 2, thumbnailURL: exampleImageURL4,
    description: "Three years before her awakening, Vanessa is a single mom in Seattle when a volcanic eruption and a rash of killings signal the start of \"The Rising.\"",
    length: 42,
    videoURL: exampleVideoURL
)

let episode3 = Episode(
    name: "Stay Inside",
    season: 1,
    episodeNumber: 3, thumbnailURL: exampleImageURL2,
    description: "When their UV light source is damaged, Vanessa and Axel must scavenge outside for parts. Flesh reveals the truth about Vanessa to his former comrades.",
    length: 43,
    videoURL: exampleVideoURL
)

let episode4 = Episode(
    name: "Begun Again",
    season: 2,
    episodeNumber: 1, thumbnailURL: exampleImageURL4,
    description: "Vanessa's long-awaited reunion with Dylan isn't what she dreamed it would be. A barely alive Dmitri flees, while others meet a final reckoning.",
    length: 43,
    videoURL: exampleVideoURL
)

let episode5 = Episode(
    name: "In Redmption",
    season: 2,
    episodeNumber: 5, thumbnailURL: exampleImageURL1,
    description: "Mohamad rescues Vanessa and Dylan, who then have a fateful clash with Julius. Two long-lost survivors reunite, but neither are who they once were.",
    length: 44,
    videoURL: exampleVideoURL
)

let  episode6 = Episode(
    name: "Love Bites",
    season: 2,
    episodeNumber: 2, thumbnailURL: exampleImageURL1,
    description: "Vanessa's attempts to keep Dylan alive force her to make a series of wrenching choices. A mysterious vampire assails a group of juvenile delinquents.",
    length: 44,
    videoURL: exampleVideoURL
)



let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Exciting", "Dark", "Chilling", "Suspensful"],
    rating: "TV-MA",
    year: 2020,
    numberOfSeasons: 3,
    defaultEpisodInfo: exampleEpisodeInfo1,
    episodes: [episode1, episode2, episode3, episode4, episode5, episode6],
    promoHeadline: "Watch Season 3 Now",
    cast: "some casts",
    creators: "Some creators",
    moreLikethis: [
        exampleMovie2,
        exampleMovie3,
        exampleMovie4,
        exampleMovie5,
        exampleMovie6,
        exampleMovie7,
    ],
    trailers: exampleTrailers
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
    moreLikethis: [],
    trailers: exampleTrailers
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
    moreLikethis: [],
    trailers: exampleTrailers
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
    moreLikethis: [],
    trailers: exampleTrailers
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
    episodes: [episode1, episode2, episode3, episode4, episode5, episode6],
    quality: "HD",
    promoHeadline: "Watch the season finale",
    cast: "Kelly Overtone, Jonathan Scarfe, Rukiya Bernard, Trezzo Mahoro",
    creators: "Niel Labute", moreLikethis: [],
    trailers: exampleTrailers
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
    moreLikethis: [],
    trailers: exampleTrailers
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
    moreLikethis: [],
    trailers: exampleTrailers
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

