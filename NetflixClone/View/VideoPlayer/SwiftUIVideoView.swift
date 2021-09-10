//
//  VIdeoPlayer.swift
//  NetflixClone
//
//  Created by charles on 10/09/2021.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var videoURL: URL
    private var player: AVPlayer {
        AVPlayer(url: videoURL)
    }
    var body: some View {
        VideoPlayer(player: player)
            .ignoresSafeArea()
    }
}

struct VIdeoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(videoURL: exampleVideoURL)
    }
}
