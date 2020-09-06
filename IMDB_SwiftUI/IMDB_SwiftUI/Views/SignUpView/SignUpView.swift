//
//  SignUpView.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @State var emailAddress: String
    @State var password: String
    
    var body: some View {
        ZStack {
            Color(red: 0.33, green: 0.36, blue: 0.41).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text(SignUpConstants.Label.SignUp.rawValue).font(.system(size: 25)).bold().padding(.top)
                        .foregroundColor(Color(red: 0.78, green: 0.84, blue: 0.90))
                    RoundedImage(image: SignUpConstants.Image.ProfilePic.rawValue)
                }
                VStack {
                    CustomTextField(text: emailAddress, placeHolder: SignUpConstants.Placeholder.EmailAddress.rawValue)
                    CustomTextField(text: password, placeHolder: SignUpConstants.Placeholder.Password.rawValue)
                    CustomTextField(text: password, placeHolder: SignUpConstants.Placeholder.ConformPassword.rawValue)
                }
                CustomButton(title: SignUpConstants.Button.Continune.rawValue, backgroundColor: .yellow).padding(.top, 25)
                Spacer()
            }.padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(emailAddress: "", password: "")
    }
}

struct RoundedImage: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit).frame(width: 170, height: 170, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .padding(.top, 30)
            .padding(.bottom, 30)
    }
}
