//
//  NetworkManager.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    //static let share = NetworkManager()
    let session = URLSession.shared
    @Published var movies = [Movie]()
    
    func fetchMvies() {
        guard let url = URL(string: NetworkAppValues.API.fetchMoviesURL) else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = NetworkAppValues.MethodType.GET.rawValue
        request.addValue(NetworkAppValues.MethodValues.applicationJsonVaue,
                         forHTTPHeaderField: NetworkAppValues.MethodValues.ContentType)
        let task = session.dataTask(with: request) { (data, response, error) in
            let decoder = JSONDecoder()
            guard let jsonData = data,
                let movies = try? decoder.decode(Movies.self, from: jsonData) else {
                    print("Parsing Error")
                    return
            }
            DispatchQueue.main.async {
                self.movies = movies.results
            }
        }
        task.resume()
    }
    
    /*func downloadImage(posterPath: String, completion: @escaping (UIImage?) -> Void) {
        let finalUrl = "\(NetworkAppValues.API.imagePath)\(posterPath)"
        guard let url = URL(string: finalUrl) else {
            return
        }
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let imageData = data else {
                return
            }
            let image = UIImage(data: imageData)
            completion(image)
        }
        task.resume()
    }*/
}
