//
//  FollowingView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct FollowingView: View {
    
    var following: [User]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(following) { user in
                    
                    NavigationLink(value: Route.otherProfile(user.id)){
                        UserRowView(user: user)
                            .padding(4)
                    }
                    
                }
            }
        }
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView(following: User.mockAllUsers)
    }
}
