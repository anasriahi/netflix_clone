//
//  APICaller.swift
//  Netflix clone
//
//  Created by MAC-Anas on 29/6/2023.
//

import Foundation


struct Constants {
    static let API_KEY = "42b5e8f8c8e04f3591981302ff43417d"
    static let baseUrl = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}


class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseUrl)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
