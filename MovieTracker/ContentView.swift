//
//  ContentView.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/20/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        ZStack {
            Image("code")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("I LOVE CODE")
            .foregroundColor(.white)
            .font(.system(.largeTitle))
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
