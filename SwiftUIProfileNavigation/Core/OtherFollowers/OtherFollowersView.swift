//
//  OtherFollowersView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct OtherFollowersView: View {
    
    var followers: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(followers) { user in
                    
                    if user.id == "lebronjames@gmail.com" {
                        
                        Button {
                            path = NavigationPath()
                        } label: {
                            UserRowView(user: user)
                                .padding(4)
                        }

                    } else {
                        
                        NavigationLink(value: Route.otherProfile(user.id)){
                            UserRowView(user: user)
                                .padding(4)
                        }
                        
                    }
                    
                }
            }
        }
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowersView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowersView(followers: User.mockAllUsers, path: .constant(NavigationPath()))
    }
}
