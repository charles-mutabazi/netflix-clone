//
//  MovieDetail.swift
//  NetflixClone
//
//  Created by charles on 05/09/2021.
//

import SwiftUI

struct MovieDetail: View {
    //MARK: PROPERTIES
    var movie: Movie
    
    var screen = UIScreen.main.bounds
    
    //MARK: BODY
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 34))
                    })
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5) // to be responsive to all screen sizes
                        MovieInfoSubheadline(movie: movie)
                    }
                }
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

//MARK: PREVIEWS
struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie6)
    }
}


//MARK: SUBVIEWS
struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack{
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text("YEAR")
            Text("RATING")
            Text("2 Seasons")
            Text("HD")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 8)
    }
}
