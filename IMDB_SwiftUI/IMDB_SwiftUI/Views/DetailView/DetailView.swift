//
//  DetailView.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var movie: Movie
    var body: some View {
        ZStack {
            Color(red: 0.33, green: 0.36, blue: 0.41).edgesIgnoringSafeArea(.all)
            VStack {
                Image("logo").cornerRadius(20)
                Text(movie.title)
                Text(movie.overview)
                Spacer()
            }
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
