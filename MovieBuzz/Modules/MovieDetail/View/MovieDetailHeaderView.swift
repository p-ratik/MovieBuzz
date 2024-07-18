//
//  MovieDetailHeaderView.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 16/07/24.
//

import SwiftUI

struct MovieDetailHeaderView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        HStack {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .imageScale(.large)
            })
            .padding(.leading, 15)
            Spacer()
            Text("Adipurush")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.trailing, 20)
                .shadow(color: Color.gray.opacity(0.5),radius: 2, x: 2, y: 1)
            Spacer()
        }
    }
}

#Preview {
    MovieDetailHeaderView()
}
