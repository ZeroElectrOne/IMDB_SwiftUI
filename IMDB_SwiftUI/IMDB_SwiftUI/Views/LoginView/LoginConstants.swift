//
//  LoginConstants.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation
import SwiftUI

enum LoginConstants {
    enum Placeholder: String {
        case Password
        case EmailAddress = "Email Address"
    }
    
    enum Button: String {
        case Continune
        case SignUp = "Sign Up"
    }
    
    enum LabelText: String {
        case DoYouHave = "Do you have an Account?"
        case WelcomeBack = "Welcome Back!"
    }
    
    enum Image: String {
        case Logo = "logo"
    }
    enum ColorVlaue {
        static let labelColor = Color(red: 0.78, green: 0.84, blue: 0.90)
        static let signUpColor = Color(red: 0.92, green: 0.30, blue: 0.29)
    }
}
