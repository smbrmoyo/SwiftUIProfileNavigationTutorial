//
//  FollowersView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct FollowersView: View {
    
    var followers: [User]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(followers) { user in
                    
                    NavigationLink(value: Route.otherProfile(user.id)){
                        UserRowView(user: user)
                            .padding(4)
                    }
                    
                }
            }
        }
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView(followers: User.mockAllUsers)
    }
}
