//
//  MovieDetailInteractor.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import Foundation

class MovieDetailInteractor {
    func fetchMovieById(id: Int, completion: @escaping (Result<Movie, Error>) -> Void) {
        guard let url = URL(string: Constants.getMoviesBaseURL + "/" + String(id)) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let movies = try JSONDecoder().decode(Movie.self , from: data)
                    completion(.success(movies))
                } catch {
                    completion(.failure(error))
                }
            } else {
                if let error = error {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
