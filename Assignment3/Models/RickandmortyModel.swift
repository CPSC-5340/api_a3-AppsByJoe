//
//  RickandmortyModel.swift
//  Assignment3
//
//  Created by Hronek Joseph on 3/26/23.
//

import Foundation

struct RickandmortyResults : Codable {
    let data : [CharacterModel]
}

struct CharacterModel : Codable, Identifiable{
    let id : Int
    let name : String
    let status : String
    let gender : String
    let image : String
}
