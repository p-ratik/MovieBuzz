//
//  File.swift
//  MovieBuzz
//
//  Created by Pratik Chougule on 12/07/24.
//

import Foundation

struct Movie: Codable, Identifiable {
    var id: Int
    var title: String
    var year: Int
    var genre: [String]
    var rating: Float
    var director: String
    var actors: [String]
    var plot: String
    var poster: String
    var trailer: String
    var runtime: Int
    var awards: String
    var country: String
    var language: String
    var boxOffice: String
    var production: String
    var website: String   
}
