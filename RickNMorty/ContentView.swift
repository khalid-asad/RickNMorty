//
//  ContentView.swift
//  RickNMorty
//
//  Created by Khalid Asad on 2019-07-13.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var episodes: [Episode] = []
    var body: some View {
        NavigationView {
            List(episodes) { episode in
                EpisodeCell(episode: episode)
            }
            .navigationBarTitle(Text("Episodes"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(episodes: testData)
    }
}
#endif

struct EpisodeCell : View {
    var episode: Episode
    var body: some View {
        return NavigationButton(destination: EpisodeDetails(episode: episode.episode, name: episode.name, airDate: episode.airDate, characters: episode.characters)) {
            VStack(alignment: .leading) {
                HStack {
                    Text(episode.episode)
                        .font(.headline)
                        Text(episode.name)
                            .font(.headline)
                    }
                    Text(episode.airDate)
                        .font(.subheadline)
                        .color(.gray)
                }
            }
        }
    }
