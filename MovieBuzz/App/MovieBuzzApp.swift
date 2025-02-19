//
//  MovieBuzzApp.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import SwiftUI

@main
struct MovieBuzzApp: App {
    private let router = MovieListRouter()
    var body: some Scene {
        WindowGroup {
            router.createMovieListView()
        }
    }
}
