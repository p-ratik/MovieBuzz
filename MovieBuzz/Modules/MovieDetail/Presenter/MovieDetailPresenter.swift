//
//  MovieDetailPresenter.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import Foundation

class MovieDetailPresenter: ObservableObject {
    @Published var movie: Movie?
    @Published var errorMessage: String?
    var interactor = MovieDetailInteractor()
    
    func fetchedMovieById(id: Int) {
        interactor.fetchMovieById(id: id) { result in
            switch result {
            case .success(let movie):
                DispatchQueue.main.async {
                    self.movie = movie
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
}
