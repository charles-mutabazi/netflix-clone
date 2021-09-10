//
//  CustomTabSwitcher.swift
//  NetflixClone
//
//  Created by charles on 07/09/2021.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    var movie: Movie
    
    func tabWidth(_ tab: CustomTab) -> CGFloat {
        let text = tab.rawValue
        return text.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    var body: some View {
        VStack(spacing: 16) {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //top red bar
                            Rectangle()
                                .frame(width: tabWidth(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            //button
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            })
                            
                        }
                        .frame(width: tabWidth(tab))
                    }
                }
            }
            
            //corresponding view to the selected tab
            switch currentTab {
            case .episodes:
                Text("Episodes list")
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(moreLikeThisMovies: movie.moreLikethis)
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMovie1)
        }
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
