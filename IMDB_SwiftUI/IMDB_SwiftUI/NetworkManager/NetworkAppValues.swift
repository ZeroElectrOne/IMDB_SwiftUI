//
//  NetworkAppValues.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation

enum NetworkAppValues {
    enum API {
        static let imagePath = "https://image.tmdb.org/t/p/original"
        static let fetchMoviesURL = "https://api.themoviedb.org/3/movie/popular?api_key=3f33babb9f20f966e8f53f68dac7eac5"
        static let getMovieURL = ""
    }
    enum MethodType: String {
        case GET
        case POST
        case PUT
    }
    enum MethodValues {
        static let applicationJsonVaue = "application/json"
        static let ContentType = "Content-type"
    }
}
