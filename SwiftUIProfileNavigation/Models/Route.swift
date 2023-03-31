//
//  Route.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import Foundation

enum Route: Hashable {
    case followers
    case following
    case otherFollowers
    case otherFollowing
    case otherProfile(String)
}
