//
//  MoviesInfo.swift
//  Moodie
//
//  Created by Yousif on 15/01/2021.
//

import SwiftUI

struct MoviesInfo: Identifiable{
    let Title: String
    let movieImage: String
    
    let id = UUID()
}

let movies = [
    MoviesInfo(Title: "sonic", movieImage: "sonic"),
    MoviesInfo(Title: "pink Panther", movieImage: "pinkPanther"),
    MoviesInfo(Title: "Mr bean", movieImage: "Mrben"),
    MoviesInfo(Title: "penguins of Madagascar", movieImage: "idk"),
]


struct ShowsInfo: Identifiable{
    let Title: String
    let movieImage: String
    let charImage: [String]
    
    let id = UUID()
}
