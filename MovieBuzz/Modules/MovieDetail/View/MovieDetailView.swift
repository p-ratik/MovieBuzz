//
//  MovieDetailView.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import SwiftUI

struct MovieDetailView: View {
    @StateObject private var presenter = MovieDetailPresenter()
    var id: Int
    
    var body: some View {
        VStack {
            MovieDetailHeaderView()
                .padding(.vertical, 15)
            ZStack {
                Color.gray.opacity(0.1)
                ScrollView() {
                    VStack(alignment: .center) {
                        HStack {
                            Spacer()
                            Image(Constants.defaultPosterImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(25)
                                .frame(width: 300, height: 300)
                                .padding(.top, 20)
                            Spacer()
                        }
                        if presenter.movie == nil {
                            Text("Loading....")
                        } else {
                            VStack(alignment: .leading, spacing: 8) {
                                MovieDetailItemView(imageName: Constants.projectorIcon, parameterName: Constants.movieTitle, parameterValue: presenter.movie?.title ?? "")
                                MovieDetailItemView(imageName: Constants.year30Icon, parameterName: Constants.year, parameterValue: String(presenter.movie?.year ?? 0))
                                MovieDetailItemView(imageName: Constants.genreIcon, parameterName: Constants.genre, parameterValue: presenter.movie?.genre[0] ?? "")
                                MovieDetailItemView(imageName: Constants.ratingIcon , parameterName: Constants.rating, parameterValue: String(presenter.movie?.rating ?? 0.0))
                                MovieDetailItemView(imageName: Constants.directorIcon, parameterName: Constants.director, parameterValue: presenter.movie?.director ?? "")
                                MovieDetailItemView(imageName: Constants.actorsIcon, parameterName: Constants.actors, parameterValue: presenter.movie?.actors[0] ?? "")
                                MovieDetailItemView(imageName: Constants.countryIcon, parameterName: Constants.country, parameterValue: presenter.movie?.country ?? "")
                                MovieDetailItemView(imageName: Constants.languageIcon, parameterName: Constants.language, parameterValue: presenter.movie?.language ?? "")
                                MovieDetailItemView(imageName: Constants.moneyIcon, parameterName: Constants.moneyIcon, parameterValue: presenter.movie?.boxOffice ?? "")
                            }
                            .padding()
                        }
                    }
                    .onAppear(perform: {
                        presenter.fetchedMovieById(id: id)
                    })
                    .background(Color.white)
                    .padding(20)
                }
                .scrollIndicators(.hidden)
              
            }
            .ignoresSafeArea(edges: .all)
            
            
        }
        
    }
}

#Preview {
    MovieDetailView(id: 0)
}
