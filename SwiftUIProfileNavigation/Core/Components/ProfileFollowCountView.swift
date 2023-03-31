//
//  ProfileFollowCount.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileFollowCountView: View {
    
    var followers: [User]
    var following: [User]
    
    var body: some View {
        HStack {
            
            Spacer()
                            
                VStack {
                    Text("\(followers.count)")
                    Text("Followers")
                }
                .foregroundColor(.black)
            
            Spacer()
            
                VStack {
                    Text("\(following.count)")
                    Text("Following")
                }
                .foregroundColor(.black)
            
            Spacer()
            
        }
        .padding(.vertical, 5)
    }
}

struct ProfileFollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFollowCountView(followers: User.mockAllUsers, following: User.mockAllUsers)
    }
}
