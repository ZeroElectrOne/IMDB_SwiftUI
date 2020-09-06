//
//  Movie.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation

struct Movie: Codable, Identifiable {
    var title: String
    var overview: String
    var poster_path: String
    var id: String {
        return "\(movieId)"
    }
    var movieId: Int
    
    enum MovieCodingKey: CodingKey {
        case title
        case overview
        case poster_path
        case id
    }
    
    init(from decode: Decoder) throws {
        let values = try decode.container(keyedBy: MovieCodingKey.self)
        self.title = try values.decode(String.self, forKey: .title)
        self.overview = try values.decode(String.self, forKey: .overview)
        self.poster_path = try values.decode(String.self, forKey: .poster_path)
        self.movieId = try values.decode(Int.self, forKey: .id)
    }
}
