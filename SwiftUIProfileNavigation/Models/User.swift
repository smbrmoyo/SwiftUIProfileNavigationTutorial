//
//  User.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import Foundation

struct User: Identifiable, Equatable {
    var id: String
    var displayName: String
    var username: String
    var followers: [User] = [User]()
    var following: [User] = [User]()
    
    static var emptyUser = User(id: "", displayName: "", username: "")
    
    static var mockUser = User(id: "lebronjames@gmail.com", displayName: "LeBron James", username: "@kingjames")
        
    static var mockAllUsers = [User(id: "anthonydavis@gmail.com", displayName: "Anthony Davis", username: "@thebrow"),
                           User(id: "lerbonjames@gmail.com", displayName: "LeBron James", username: "@kingjames"),
                           User(id: "austinreaves@gmail.com", displayName: "Austin Reaves", username: "@ar15"),
                           User(id: "dangelorussel@gmail.com", displayName: "D'Angelo Russel", username: "@dlo")]
    
}
