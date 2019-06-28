//
//  Movie.swift
//  MovieTracker
//
//  Created by DARRELL A PAYNE on 6/26/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct Movie: Identifiable {
    
    var id: UUID = UUID()
    
    var title: String = "Rambo"
    var rating: Double = 3
    var seen: Bool = false
}


