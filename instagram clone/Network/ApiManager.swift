//
//  ApiManager.swift
//  instagram clone
//
//  Created by Diego Bejar on 21/09/23.
//

import Foundation

class APIManager {
    static let shared = APIManager()
    
    var token = "3232323"
    
    private init() {}
    
    func fetchCharacters(page: Int, completion: @escaping ([Profile]?, Error?) -> Void) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/?page=\(page)") else {
            completion(nil, NSError(domain: "Invalid URL", code: 0, userInfo: nil))
            return
        }
                
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let data = data else {
                completion(nil, NSError(domain: "No data", code: 0, userInfo: nil))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(APIResponse.self, from: data)
                completion(response.results, nil)
            } catch {
                completion(nil, error)
            }
        }
        
        task.resume()
    }
    
    func fetchPost(){
        
        
        
        
    }
    
}

struct APIResponse: Codable {
    let results: [Profile]
}












