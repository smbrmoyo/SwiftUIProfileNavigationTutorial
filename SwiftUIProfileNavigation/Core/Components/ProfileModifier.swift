//
//  ProfileModifier.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "person.2")
                        .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Profile")
                        .font(.system(size: 24))
                        .bold()
                        .accessibilityAddTraits(.isHeader)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                        .foregroundColor(.black)
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .followers:
                    FollowersView(followers: User.mockAllUsers)
                    
                case .following:
                    FollowingView(following: User.mockAllUsers)
                }
            }
    }
    
}
