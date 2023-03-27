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
                ForEach(ramvm.ramData) { ramCharacter in
                    NavigationLink {
                        CharacterDetail(ramCharacter: ramCharacter)
                    } label: {
                        Text(ramCharacter.name)
                    }
                }
            }
            .task {
                await ramvm.fetchData()
            }
//            .listStyle(.grouped)
            .navigationTitle("R&M Characters")
        }
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
