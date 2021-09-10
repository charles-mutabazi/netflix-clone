//
//  TrailerList.swift
//  NetflixClone
//
//  Created by charles on 10/09/2021.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    var body: some View {
        VStack{
            ForEach(trailers) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageURL: trailer.imageURL, videoURL: trailer.videoURL)
                        .cornerRadius(8)
                    Text(trailer.title)
                        .font(.headline)
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            TrailerList(trailers: exampleTrailers)
                .padding(.horizontal)
        }
    }
}
