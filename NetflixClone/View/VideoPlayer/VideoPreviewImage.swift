//
//  VideoPreviewImage.swift
//  NetflixClone
//
//  Created by charles on 10/09/2021.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL : URL
    
    @State private var showVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 44))
            })
            .sheet(isPresented: $showVideoPlayer, content: {
                SwiftUIVideoView(videoURL: videoURL)
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL1, videoURL: exampleVideoURL)
    }
}
