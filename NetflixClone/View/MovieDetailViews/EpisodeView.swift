//
//  EpisodeView.swift
//  NetflixClone
//
//  Created by charles on 22/09/2021.
//

import SwiftUI

struct EpisodeView: View {
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool;
    @Binding var selectedSeason: Int;
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({$0.season == season})
    }
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                    
                })
                Spacer()
            }
            
            //episode list
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack {
                        //video preview
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width:150, height: 90)
                            .cornerRadius(6)
                            .clipped()
                        //episode info
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                            Text("\(episode.length)m")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        //download btn
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }
                    Text(episode.description)
                }
                .padding(.bottom, 20)
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            EpisodeView(episodes: [episode1, episode2, episode3], showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
