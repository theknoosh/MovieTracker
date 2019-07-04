//
//  MovieList.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/26/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct MovieList : View {
    
    @ObjectBinding var movieStore = MovieStore()
    
    var body: some View {
        NavigationView {
            List{
                PresentationButton(Text("Add Movie"), destination: DetailView(movie: Movie(), movieStore: movieStore))
                .foregroundColor(.blue)
                ForEach(movieStore.movies){ movie in
                    NavigationButton(destination: DetailView(movie: movie, movieStore: self.movieStore)) {
                        Text(movie.title)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct MovieList_Previews : PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
#endif
