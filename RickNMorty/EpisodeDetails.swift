//
//  EpisodeDetails.swift
//  RickNMorty
//
//  Created by Khalid Asad on 2019-07-13.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import Foundation
import SwiftUI

struct EpisodeDetails : View {
    var episode: String
    var name: String
    var airDate: String
    var characters: [String]
    
    var body: some View {
        VStack {
            Text(episode)
                .font(.headline)
            Text(name)
                .font(.title)
            Text(airDate)
                .font(.subheadline)
            Divider()
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

#if DEBUG
struct EpisodeDetails_Previews : PreviewProvider {
    static var previews: some View {
        EpisodeDetails(episode: "S03E01", name: "The Rickifilus", airDate: "September 10, 2017.", characters: ["Rick", "Morty"])
    }
}
#endif
