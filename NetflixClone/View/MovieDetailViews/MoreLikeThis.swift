//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by charles on 07/09/2021.
//

import SwiftUI

struct MoreLikeThis: View {
    var moreLikeThisMovies: [Movie]
    var columns = [
        GridItem(),
        GridItem(),
        GridItem()
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<moreLikeThisMovies.count) {index in
                    StandardHomeMovie(movie: moreLikeThisMovies[index])
                        .cornerRadius(8)
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(moreLikeThisMovies: exampleMovie1.moreLikethis)
    }
}
