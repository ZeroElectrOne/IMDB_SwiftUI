//
//  Movies.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation

struct Movies: Codable {
    var results: [Movie]
    
    enum MovieListKey: String, CodingKey {
        case results
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: MovieListKey.self)
        self.results = try values.decode([Movie].self, forKey: .results)
    }
}
