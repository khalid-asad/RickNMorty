//
//  CharacterDetails.swift
//  RickNMorty
//
//  Created by Khalid Asad on 2019-07-13.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import Foundation
import SwiftUI

struct Origin {
    
    var name: String
    var url: String
}

struct Location {
    
    var name: String
    var url: String
}

struct CharacterDetails : View {
    
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: Origin
    var location: Location
    var image: String
    var episode: [String]
    var url: String
    var created: String
    
    var body: some View {
        VStack {
            Image(name: image)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.orange, lineWidth: CGFloat(integerLiteral: 4))
                )
            Text(name)
//                .font(.title)
            Divider()
            HStack {
//                Text("Status").font(.headline)
                Text(status).font(.subheadline)
            }
            Divider()
            HStack {
//                Text("Species")
//                    .font(.headline)
                Text(species)
                    .font(.subheadline)
            }
            Divider()
            HStack {
//                Text("Gender")
//                    .font(.headline)
                Text(gender)
                    .font(.subheadline)
            }
            Divider()
            HStack {
//                Text("Origin")
//                    .font(.headline)
                Text(origin.name)
                    .font(.subheadline)
            }
            Divider()
            HStack {
//                Text("Last Location")
//                    .font(.headline)
                Text(location.name)
                    .font(.subheadline)
            }
            Divider()
            }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

#if DEBUG
struct CharacterDetails_Previews : PreviewProvider {
    static var previews: some View {
        CharacterDetails(name: "Morty Smith", status: "Alive", species: "Human", type: "", gender: "Male", origin: Origin(name: "Earth", url: "https://rickandmortyapi.com/api/location/1"), location: Location(name: "Earth", url: "https://rickandmortyapi.com/api/location/20"), image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg", episode: [ "https://rickandmortyapi.com/api/episode/1", "https://rickandmortyapi.com/api/episode/2"], url: "https://rickandmortyapi.com/api/character/2", created: "2017-11-04T18:50:21.651Z")
    }
}
#endif
