//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Hronek Joseph on 3/27/23.
//

import SwiftUI

struct CharacterDetail: View {
    
    var character : CharacterModel
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: character.image))
                Text(character.name)
                Text(character.gender)
                Text(character.status)
            }
        }
        
    }
}

//struct CharacterDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetail()
//    }
//}
