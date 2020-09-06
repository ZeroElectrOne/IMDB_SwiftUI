//
//  HomeView.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        ZStack {
            Color(red: 0.33, green: 0.36, blue: 0.41)
            NavigationView {
                List(networkManager.movies) { movie in
                    NavigationLink(destination: DetailView(movie: movie)) {
                        MovieCell(movie: movie)
                    }
                }
                .navigationBarTitle("Movies")
            }
            .onAppear {
                self.networkManager.fetchMvies()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
