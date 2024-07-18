//
//  MovieListPresenter.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import Foundation
import SwiftUI

class MovieListPresenter: ObservableObject {
    @Published var movies: [Movie] = []
    @Published var errorMessage: String?
    private var interactor = MovieListInteractor()
    private var router = MovieListRouter()
    
    func fetchedMovies() {
        interactor.fetchMovies { result in
            switch result {
            case .success(let movies):
                DispatchQueue.main.async {
                    self.movies = movies
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
    func didSelectMovie(id: Int) -> MovieDetailView {
        return router.naviagteToMovieDetailView(id: id)
    }
    
    
}
