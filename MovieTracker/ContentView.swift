//
//  ContentView.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/20/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI


struct ContentView : View {
    
    @State var title: String = ""
    @State var rating = 3.0
    @State var seen = false

    var body: some View {
        List {
            Section {
                VStack (alignment: .leading){
                    Text("Title").font(.subheadline)
                    .foregroundColor(.gray)
                    TextField($title).background(Color.gray)
                }
            }
            Section {
                VStack (alignment: .leading){
                    Text("Rating").font(.subheadline)
                        .foregroundColor(.gray)
                    HStack {
                        Spacer()
                        Text(String(repeating: "★" , count: Int(rating)))
                            .font(.title)
                            .foregroundColor(.red)
                        Spacer()
                    }
                    
                    Slider(value: $rating, from: 1.0, through: 5.0, by: 1.0)
                }
            }
        }.listStyle(.grouped)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
