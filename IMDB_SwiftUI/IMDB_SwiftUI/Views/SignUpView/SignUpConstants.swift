//
//  SignUpConstants.swift
//  IMDB_SwiftUI
//
//  Created by Sumi on 06/09/20.
//  Copyright © 2020 Srikant. All rights reserved.
//

import Foundation
import SwiftUI

enum SignUpConstants {
    enum Placeholder: String {
        case Password
        case EmailAddress = "Email Address"
        case ConformPassword = "Conform Password"
    }
    
    enum Button: String {
        case Continune
    }
    
    enum Label: String {
        case SignUp = "Sign Up"
    }
    
    enum Image: String {
        case ProfilePic = "placeHolderImage"
    }
    enum ColorVlaue {
        static let labelColor = Color(red: 0.78, green: 0.84, blue: 0.90)
        static let signUpColor = Color(red: 0.92, green: 0.30, blue: 0.29)
    }
}
