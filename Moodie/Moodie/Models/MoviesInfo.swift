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
    MoviesInfo(Title: "Lion King", movieImage: "lionKing"),
    MoviesInfo(Title: "Mulan", movieImage: "mulan"),
    MoviesInfo(Title: "Toy Story 4", movieImage: "toyStory")
]


struct ShowsInfo: Identifiable{
    let Title: String
    let movieImage: String
    let charImage: [String]
    
    let id = UUID()
}

let showTv = [
    MoviesInfo(Title: "Lion King", movieImage: "lionKing"),
    MoviesInfo(Title: "Mulan", movieImage: "mulan"),
    MoviesInfo(Title: "Toy Story 4", movieImage: "toyStory")
]

