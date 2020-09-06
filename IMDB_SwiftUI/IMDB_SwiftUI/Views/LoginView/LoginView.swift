//
//  LoginView.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var emailAddressTextField: String
    @State var passwordTextField: String
    
    var body: some View {
        ZStack {
            Color(red: 0.33, green: 0.36, blue: 0.41)
            VStack {
                Image(LoginConstants.Image.Logo.rawValue)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding(.top, 45)
                    .padding(.bottom).padding(.vertical)
                Text(LoginConstants.LabelText.WelcomeBack.rawValue)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(LoginConstants.ColorVlaue.labelColor)
                Spacer()
                CustomTextField(text: emailAddressTextField,
                                placeHolder: LoginConstants.Placeholder.EmailAddress.rawValue)
                
                CustomTextField(text: passwordTextField,
                                placeHolder: LoginConstants.Placeholder.Password.rawValue)
                CustomButton(title: LoginConstants.Button.Continune.rawValue, backgroundColor: .yellow)
                Spacer()
                HStack {
                    Text(LoginConstants.LabelText.DoYouHave.rawValue).foregroundColor(LoginConstants.ColorVlaue.labelColor)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(LoginConstants.Button.SignUp.rawValue)
                    }.foregroundColor(Color(red: 0.92, green: 0.30, blue: 0.29))
                }.padding()
            }.padding()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(emailAddressTextField: "", passwordTextField: "")
    }
}
