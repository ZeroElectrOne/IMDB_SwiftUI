//
//  MovieCell.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct MovieCell: View {
    var movie: Movie
    var body: some View {
        ZStack {
            HStack {
                Image("placeHolderImage").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100,
                           height: 150,
                           alignment: .leading)
                    .padding(.leading)
                    .padding(.trailing)
                VStack {
                    Text(movie.title)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Text(movie.overview)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
            }
        }
    }
}
//struct HomeViewCell_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieCell(movie: Movie(from: <#T##Decoder#>))
//    }
//}
