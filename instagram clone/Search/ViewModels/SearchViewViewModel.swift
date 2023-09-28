//
//  SearchViewViewModel.swift
//  instagram clone
//
//  Created by Diego Bejar on 25/09/23.
//

import Foundation
class SearchViewViewModel: ObservableObject {
    @Published var posts = [Profile]()
    @Published var isLoadingMoreData = false
    var currentPage = 0
    
    func loadNextPage() {
        guard isLoadingMoreData == false else {
            return
        }
        currentPage = currentPage + 1
        loadData(page: currentPage)
    }
    
    private func loadData(page: Int) {
        isLoadingMoreData = true
        APIManager.shared.fetchCharacters(page: page) { characters, error in
            if let characters = characters {
                DispatchQueue.main.async {
                    self.posts.append(contentsOf: characters)
                    print("posts.count", self.posts.count)
                }
            } else if let error = error {
                print("Error fetching characters: \(error.localizedDescription)")
            }
            DispatchQueue.main.async {
                self.isLoadingMoreData = false
            }
        }
    }


}
