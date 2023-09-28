//
//  HomeViewViewModel.swift
//  instagram clone
//
//  Created by Diego Bejar on 21/09/23.
//

import Foundation
import Combine

class HomeViewViewModel: ObservableObject {
    @Published var posts: [Profile] = []
    
    //realizamos la operacion de llamada a la api en un hilo global para no interrumpir el hilo principal y dentro del if lo cargamos en el hilo principal
    func loadData() {
        DispatchQueue.global().async {
            APIManager.shared.fetchCharacters(page: 1) { characters, error in
                if let characters = characters {
                    DispatchQueue.main.async {
                        self.posts = characters
                    }
                } else if let error = error {
                    print("Error fetching characters: \(error.localizedDescription)")
                }
            }
        }
    }
}
