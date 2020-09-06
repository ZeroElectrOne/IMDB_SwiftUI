//
//  CustomButton.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Hello", backgroundColor: .yellow)
    }
}

struct CustomButton: View {
    let title: String
    let backgroundColor: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .circular)
            .fill(backgroundColor)
            .frame(height: 50)
            .overlay(Button(action: {
                print("Ation")
            }) {
                Text(title)
                    .font(.system(size: 16))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            }.background(Color.clear))
            .padding(.all)
    }
}
