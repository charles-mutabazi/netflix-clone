//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by charles on 03/09/2021.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    //check if the current category is the last (to be able ignore the last do)
    func isLastCategory(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    //MARK: BODY
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer() //to push to the bottom
                HStack {
                    ForEach(movie.categories, id: \.self){ category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                                .bold()
                            if !isLastCategory(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 4))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //code for tapping the "my list"
                    }
                    Spacer()
                    RectangleButton(title: "Play", imageName: "play.fill", backgroundColor: .white) {
                        // take to the video player.
                    }
                    .foregroundColor(.black)
                    .frame(width: 150)
                    Spacer()
                    SmallVerticalButton(title: "Info", isOnImage: "info.circle", isOffImage: "info-circle", isOn: true) {
                        //code for tapping the info button takes us to the details page
                    }
                    Spacer()
                }
                .padding()
            }
            .background(
                LinearGradient.blackGradientOpacity //extension - reusable
                .padding(.top, 360)
            )
        }
        .foregroundColor(.white)
    }
}

//MARK: PREVIEW
struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
