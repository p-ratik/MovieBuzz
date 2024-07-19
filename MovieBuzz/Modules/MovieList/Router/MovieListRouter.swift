//
//  MovieListRouter.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import Foundation

class MovieListRouter {
    func createMovieListView() -> MovieListView {
        let presenter = MovieListPresenter()
        let interactor = MovieListInteractor()
        presenter.router = self
        presenter.interactor = interactor
        let view = MovieListView(presenter: presenter)
        return view
    }
    
    func naviagteToMovieDetailView(id: Int) -> MovieDetailView {
        return MovieDetailView(id: id)
    }
    
    
}
