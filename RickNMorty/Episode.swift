//
//  Episode.swift
//  RickNMorty
//
//  Created by Khalid Asad on 2019-07-13.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import Foundation
import SwiftUI

struct Episode: Identifiable {
    
    var id: Int
    var name: String
    var airDate: String
    var episode: String
    var characters: [String]
    var url: String
    var created: String
}

#if DEBUG

let testData = [
    Episode(id: 28, name: "The Ricklantis Mixup", airDate: "September 10, 2017", episode: "S03E07", characters: ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2"], url: "https://rickandmortyapi.com/api/episode/28", created: "2017-11-10T12:56:36.618Z"),
    Episode(id: 29, name: "The Next Episode", airDate: "September 17, 2017", episode: "S03E08", characters: ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2"], url: "https://rickandmortyapi.com/api/episode/29", created: "2017-11-10T12:56:36.618Z")
]

#endif
