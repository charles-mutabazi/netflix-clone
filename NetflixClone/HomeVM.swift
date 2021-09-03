//
//  HomeVM.swift
//  NetflixClone
//
//  Created by charles on 02/09/2021.
//

import Foundation
/**
 This is for adding the logic that is used in the view uis
 */
class HomeVM: ObservableObject {
    //String = Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({String($0)})
    }
    
    init() {
        setUpMovies()
    }
    
    //get movies in a specific category
    public func getMovies (forCat cat: String) -> [Movie] {
        return movies[cat] ?? [];
    }
    
    func setUpMovies() {
        movies["Popular on Netflix"] = exampleMovies
        movies["Trending Now"] = exampleMovies.shuffled()
        movies["Watch it Again"] = exampleMovies.shuffled()
        movies["TV Sci-Fi & Fantasy"] = exampleMovies.shuffled()
        movies["Because you watched Lupin"] = exampleMovies.shuffled()
        movies["Action & Adeventure"] = exampleMovies.shuffled()
        movies["TV Dramas"] = exampleMovies.shuffled()
    }
}
