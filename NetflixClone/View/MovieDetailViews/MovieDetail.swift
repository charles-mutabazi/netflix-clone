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
                .padding(.trailing, 16)
                
                StandardHomeMovie(movie: movie)
                    .frame(width: screen.width, height: 250, alignment: .center)
                    .clipped() // for cropping
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text(movie.name)
                            .font(.system(size: 23))
                            .bold()
                        MovieInfoSubheadline(movie: movie)
                        if movie.promoHeadline != nil {
                            Text(movie.promoHeadline!)
                                .font(.system(size: 19))
                                .bold()
                        }
                        
                        RectangleButton(title: "Play", imageName: "play.fill") {
                            //play action
                        }
                        
                        RectangleButton(title: "Download", imageName: "arrow.down.to.line.alt", backgroundColor: .gray) {
                            //play action
                        }
                        
                        EpisodeInfo(movie: movie)
                        
                        CastInfo(movie:movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                                //toggle add to my list
                            }
                            SmallVerticalButton(title: "Rating", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                //toggle rating
                            }
                            SmallVerticalButton(title: "My List", isOnImage: "paperplane", isOffImage: "paperplane", isOn: true) {
                                //toggle rating
                            }
                        }
                        
                    }
                }
                .padding(.horizontal, 12)
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

//MARK: PREVIEWS
struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie5)
    }
}


//MARK: SUBVIEWS
struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack{
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
            if movie.quality != nil {
                QualityView(quality: movie.quality!)
            }
            Spacer()
        }
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.gray)
                .frame(width: 30, height: 20)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            Text(rating)
                .font(.system(size: 10))
                .bold()
        }
    }
}

struct QualityView: View {
    var quality: String
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(Color.gray, lineWidth: 4)
                .cornerRadius(3.0)
                .frame(width: 30, height: 20)
            Text(quality)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: 16))
        }
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(alignment: .leading, spacing:4) {
            Text("Cast: \(movie.cast)")
            Text("Creator(s): \(movie.creators)")
        }
        .font(.footnote)
        .foregroundColor(.gray)
        .padding(.vertical,12)
    }
}

struct EpisodeInfo: View {
    var movie: Movie
    
    var body: some View {
        Group {
            Text(movie.episodeInfoDisplay)
                .font(.system(size: 18))
                .bold()
                .padding(.vertical)
            Text(movie.episodeDescriptionDisplay)
        }
    }
}
