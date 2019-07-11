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
                PresentationButton(Text("Add Movie"), destination: MovieDetail(movie: Movie(), movieStore: movieStore, newMovie:true))
                .foregroundColor(.blue)
                ForEach(movieStore.movies){ movie in
                    NavigationButton(destination: MovieDetail(movie: movie, movieStore: self.movieStore,newMovie:false)) {
                        if movie.seen {
                            Text(movie.title).foregroundColor(.green)
                        } else {
                            Text(movie.title)
                        }
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
