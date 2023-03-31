//
//  OtherFollowCount.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct OtherFollowCount: View {
    var followers: [User]
    var following: [User]
    
    var body: some View {
        HStack {
            
            Spacer()
            
            NavigationLink(value: Route.otherFollowers){
                VStack {
                    Text("\(followers.count)")
                    Text("Followers")
                }
                .foregroundColor(.black)
            }
            
            Spacer()
            
            NavigationLink(value: Route.otherFollowing){
                VStack {
                    Text("\(following.count)")
                    Text("Following")
                }
                .foregroundColor(.black)
            }
            
            Spacer()
            
        }
        .padding(.vertical, 5)
    }
}

struct OtherFollowCount_Previews: PreviewProvider {
    static var previews: some View {
        OtherFollowCount(followers: User.mockAllUsers, following: User.mockAllUsers)
    }
}
