//
//  MovieListItemView.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 16/07/24.
//

import SwiftUI
import Kingfisher

struct MovieListItemView: View {
    var movieName: String
    var moviePoster: String
    var movieYear: Int
    var body: some View {
        HStack(spacing: 18) {
            KFImage(URL(string: moviePoster))
                .resizable()
                .placeholder({
                    Image(Constants.loadingImagePlaceholder)
                })
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4){
                Text("\(movieName)")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                Text(String(movieYear))
                    .font(.footnote)
                    .foregroundStyle(.red)
            }
        }
    }
}
