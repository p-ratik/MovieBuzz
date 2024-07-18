//
//  MovieDetailItemView.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 17/07/24.
//

import SwiftUI

struct MovieDetailItemView: View {
    var imageName: String
    var parameterName: String
    var parameterValue: String
    var body: some View {
        HStack {
            Image(imageName)
            Text(parameterName)
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(parameterValue)
        }
    }
}

