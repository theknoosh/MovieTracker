//
//  Movie.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/26/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI
import Combine

struct Movie: Identifiable {
    
    var id: UUID = UUID()
    
    var title: String = ""
    var rating: Double = 3
    var seen: Bool = false
}

class MovieStore: BindableObject {
    let didChange = PassthroughSubject<Void,Never>()
    
    var movies: [Movie] {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        var movie1 = Movie()
        movie1.title = "Sandlot"
        var movie2 = Movie()
        movie2.title = "The Matrix"
        movie2.seen = true
        
        movies = [movie1, movie2]
        
    }
    
    func addMovie(movie: Movie){
        movies.append(movie)
    }
    
}


