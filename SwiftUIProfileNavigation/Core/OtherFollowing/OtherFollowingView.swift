//
//  OtherFollowingView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct OtherFollowingView: View {
    
    var following: [User]
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(following) { user in
                    
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
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherFollowingView_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowingView(following: User.mockAllUsers, path: .constant(NavigationPath()))
    }
}
