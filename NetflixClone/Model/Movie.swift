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
    
    //Movie Detail fields
    var rating: String
    var year: Int
    var numberOfSeasons: Int?
    
    //personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodInfo: CurrentEpisodeInfo
    
    var episodes: [Episode]?
    
    var quality: String?
    var promoHeadline: String?
    
    var cast: String
    var creators: String
    
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
           return num == 1 ? "1 Season" : "\(num) Seasons"
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }else{
            return "S\(defaultEpisodInfo.season):E\(defaultEpisodInfo.episode) \(defaultEpisodInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        }else{
            return defaultEpisodInfo.description
        }
    }
    
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
