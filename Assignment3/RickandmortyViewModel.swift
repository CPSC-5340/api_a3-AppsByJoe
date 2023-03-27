//
//  RickandmortyViewModel.swift
//  Assignment3
//
//  Created by Hronek Joseph on 3/26/23.
//

import Foundation

class RickandmortyViewModel : ObservableObject {
    @Published private(set) var ramData = [CharacterModel]()
    private let url = "https://rickandmortyapi.com/api/character/[1,2,3]"
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: self.url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let results = try JSONDecoder().decode(RickandmortyResults.self, from: data)
                self.ramData = results.data
            } catch {
                print(error)
            }
        }
    }
}
