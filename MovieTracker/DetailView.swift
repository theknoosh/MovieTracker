//
//  DetailView.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/20/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI


struct DetailView : View {
    
    @State var movie: Movie = Movie()
    @Environment(\.isPresented) var isPresented
    
//    @State var title: String = ""
//    @State var rating = 3.0
//    @State var seen = false

    var body: some View {
        List {
            Section {
                VStack (alignment: .leading){
                    ControlTitle(title: "Title")
                    TextField($movie.title)
                }
            }
            Section {
                VStack (alignment: .leading){
                   ControlTitle(title: "Rating")
                    HStack {
                        Spacer()
                        Text(String(repeating: "★" , count: Int(movie.rating)))
                            .font(.title)
                            .foregroundColor(.red)
                        Spacer()
                    }
                    
                    Slider(value: $movie.rating, from: 1.0, through: 5.0, by: 1.0)
                }
            }
            Section {
                VStack (alignment: .leading){
                    ControlTitle(title: "Watched")
                    Toggle(isOn: $movie.seen) {
                        if movie.title == "" {
                            Text("I have seen this movie")
                        }else {
                            Text("I have seen \(movie.title)")
                        }
                    }
                }
            }
            Section {
                Button(action: {
                    self.isPresented?.value = false
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }
            }
        }.listStyle(.grouped)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView(movie: Movie())
    }
}
#endif

struct ControlTitle : View {
    var title: String
    var body: some View {
        return Text(title).font(.subheadline)
            .foregroundColor(.gray)
    }
}
