//
//  Characters.swift
//  Assignment3
//
//  Created by Hronek Joseph on 3/27/23.
//

import SwiftUI

struct Characters: View {
    
    @ObservedObject var ramvm = RickandmortyViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(ramvm.ramData) { character in
                    NavigationLink {
                        CharacterDetail(character: character)
                    } label: {
                        Text(character.name)
                    }
                }
            }
            .task {
                await ramvm.fetchData()
            }
        }
        .navigationTitle("Rick and Morty Characters")
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
