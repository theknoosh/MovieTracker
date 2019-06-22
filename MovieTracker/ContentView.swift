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
       PresentationButton(Text("Go to next"), destination: ContentView())
    }
    func hello(){
        print("Tapped")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
