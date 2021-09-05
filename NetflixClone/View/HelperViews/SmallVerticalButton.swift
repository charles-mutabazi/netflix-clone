//
//  SmallVerticalButton.swift
//  NetflixClone
//
//  Created by charles on 03/09/2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    var title: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    //computed variable
    var imageName: String {
        isOn ? isOnImage : isOffImage
    }
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .font(.title2)
                    .padding(.bottom,2)
                Text(title)
                    .font(.system(size: 14))
                    .bold()
            }
            .foregroundColor(.white)
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false){
                print("tapped!")
            }
        }
    }
}
