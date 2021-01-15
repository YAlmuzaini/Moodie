//
//  Home.swift
//  Moodie
//
//  Created by Yousif on 6/01/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("\("Zomp")"), Color("\("QueenBlue")")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Let's Cheer You Up, Ok?")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                ScrollView(.vertical){
                    VStack{
                        VStack(alignment: .leading) {
                            Text("Tv Shows")
                                .font(.title3)
                                .bold()
                                .padding(.horizontal, 20)
                            ScrollView(.horizontal){
                                HStack(spacing: 20){
                                    TVShows()
                                    TVShows()
                                    TVShows()
                                    TVShows()
                                }
                            }
                        }.padding(20)
                        
                        VStack(alignment: .leading) {
                            Text("Movies")
                                .font(.title3)
                                .bold()
                                .padding(.horizontal, 20)
                            ScrollView(.horizontal){
                                HStack(spacing: 20){
                                    Movies()
                                    Movies()
                                    Movies()
                                    Movies()
                                }
                            }
                        }.padding(20)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct TVShows: View {
    var body: some View {
        Image("rabbit")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .cornerRadius(30)
            .overlay(TVShowInfo(), alignment: .bottom)
        
    }
}

struct TVShowInfo: View {
    var body: some View {
        ZStack {
            VStack{
                HStack(spacing: 0){
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }.frame(maxWidth: .infinity, alignment: .leading)
                .font(.callout)
                .foregroundColor(.yellow)
                Text("Rabbbit")
                    .font(.largeTitle)
                    .padding(6)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("sitcom comedy")
                    .font(.callout)
                    .padding(6)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }.padding(20)
    }
}

struct Movies: View {
    var body: some View {
        Image("rabbit")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .cornerRadius(30)
            .overlay(MovieInfo(), alignment: .bottom)
        
    }
}

struct MovieInfo: View {
    var body: some View {
        ZStack {
            VStack{
                HStack(spacing: 0){
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }.frame(maxWidth: .infinity, alignment: .leading)
                .font(.callout)
                .foregroundColor(.yellow)
                Text("Rabbbit")
                    .font(.largeTitle)
                    .padding(6)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("sitcom comedy")
                    .font(.callout)
                    .padding(6)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }.padding(20)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
