//
//  HomeView.swift
//  NetflixClone
//
//  Created by charles on 31/08/2021.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: PROPERTIES
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    //MARK: BODY
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .padding(.top, -100)
                        .frame(width: screen.width)
                        .zIndex(-1) //to send back the view
                    ForEach(vm.allCategories, id: \.self) {category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title2)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false){
                                LazyHStack {
                                    ForEach(vm.getMovies(forCat: category)){
                                        movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
        
    }
}

//MARK: PREVIEWS
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//MARK: EXTRACTED SUB VIEWS

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //action
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
            })
            
            Spacer()
            Button(action: {
                //action
            }, label: {
                Text("TV Shows")
            })
            Spacer()
            Button(action: {
                //action
            }, label: {
                Text("Movies")
            })
            Spacer()
            Button(action: {
                //action
            }, label: {
                Text("My List")
            })
        }//TOP BUTTONS
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
