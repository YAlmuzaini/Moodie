//
//  RecommendationView.swift
//  Moodie
//
//  Created by Yousif on 06/01/2021.
//

import SwiftUI

struct RecommendationView: View {
    var body: some View {
        TabView{
            
            Home()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Home")
                }
            
            Text("Moodie")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView()
    }
}
