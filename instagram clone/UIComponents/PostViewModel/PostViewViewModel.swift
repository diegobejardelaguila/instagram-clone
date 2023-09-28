//
//  PostViewModel.swift
//  instagram clone
//
//  Created by Diego Bejar on 21/09/23.
//
import Foundation
import Combine

class PostViewViewModel: ObservableObject {
    @Published var postItems: [Profile] = []

    func loadData() {
        DispatchQueue.global().async {
            APIManager.shared.fetchCharacters(page: 1) { characters, error in
                if let characters = characters {
                    DispatchQueue.main.async {
                        self.postItems = characters
                    }
                } else if let error = error {
                    print("Error fetching characters: \(error.localizedDescription)")
                }
            }
        }
    }
}


