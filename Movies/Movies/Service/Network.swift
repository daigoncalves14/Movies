//
//  Network.swift
//  Movies
//
//  Created by Daiane Goncalves on 24/01/23.
//

import UIKit

protocol MoviesServiceProtocol: GenericService {
    func getMovieURLSession(completion: @escaping completion<[Result]?>)
}

class HomeService: MoviesServiceProtocol {
    
    func getMovieURLSession (completion: @escaping completion<[Result]?>) {
        let urlString: String = "https://api.themoviedb.org/3/movie/popular?api_key=17db0bddf6fdef6e1248c2b9edcfe708"
        guard let url: URL = URL(string: urlString) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let dataResult = data else { return }
                
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let movies: Movies = try JSONDecoder().decode(Movies.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(movies.results,nil)
                } catch {
                    print("ERROR -> \(error)")
                    completion(nil, error)
                }
            } else {
                print("ERROR -> \(#function)")
                completion(nil, error)
            }
        }
        task.resume()
    }
    
}

