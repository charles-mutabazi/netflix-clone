//
//  RectangleButton.swift
//  NetflixClone
//
//  Created by charles on 03/09/2021.
//

import SwiftUI

struct RectangleButton: View {
    
    //MARK: PROPERTIES
    var title: String
    var imageName: String
    var backgroundColor: Color = .white
    
    
    //
    var action: () -> Void
    
    //MARK: BODY
    var body: some View {
        Button(action: {action()}) {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(title)
                    .font(.system(size: 18))
                    .bold()
                Spacer()
            }
            
        }
        .padding(.vertical, 9)
        .foregroundColor(backgroundColor == .white ? .black : .white)
        .background(backgroundColor)
        .cornerRadius(4.0)
        
    }
}

//MARK: PREVIEWS
struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            RectangleButton(title: "Play", imageName: "play.fill"){
                print("Tapped")
            }
        }
    }
}
