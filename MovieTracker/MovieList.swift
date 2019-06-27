//
//  MovieList.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/26/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct MovieList : View {
    
    var movies: [Movie] = [Movie(), Movie(), Movie()]
    
    var body: some View {
        List(movies){ movie in
            Text(movie.title)
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
