//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Hronek Joseph on 3/27/23.
//

import SwiftUI

struct CharacterDetail: View {
    
    var ramCharacter : CharacterModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: ramCharacter.image))
                Text(ramCharacter.name)
                Text(ramCharacter.gender)
                Text(ramCharacter.status)
            }
        }
        
    }
}

// TODO: ???
//struct CharacterDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        var character : CharacterModel = "https://rickandmortyapi.com/api/character/1"
//        CharacterDetail(character: character)
//    }
//}
