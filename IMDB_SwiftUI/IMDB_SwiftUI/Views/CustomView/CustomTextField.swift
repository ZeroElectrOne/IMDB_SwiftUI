//
//  CustomTextField.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    @State var text: String
    let placeHolder: String
    var body: some View {
        HStack {
            TextField(placeHolder, text: $text)
        }
        .padding(.all)
        .background(Color.gray)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: "srikant@gmail.com",
                        placeHolder: "Email Address")
    }
}
