//
//  MovieListView.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import SwiftUI
import Kingfisher

struct MovieListView: View {
    @ObservedObject var presenter: MovieListPresenter
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.1)
                VStack(alignment: .leading, spacing: 0) {
                    HStack() {
                        Spacer()
                        Text(Constants.movieListViewHeader)
                            .font(.title2)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .padding(.vertical, 15)
                    .background(Color.white)
                    List(presenter.movies) { movie in
                        NavigationLink(destination: {
                            self.presenter.didSelectMovie(id: movie.id)
                                .navigationBarBackButtonHidden()
                        }, label: {
                            MovieListItemView(movieName: movie.title, moviePoster: movie.poster, movieYear: movie.year)
                        })
                    }
                    .listStyle(PlainListStyle())
                    .padding()
                    .scrollIndicators(.hidden)
                    .onAppear(perform: {
                        self.presenter.fetchedMovies()
                    })
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

