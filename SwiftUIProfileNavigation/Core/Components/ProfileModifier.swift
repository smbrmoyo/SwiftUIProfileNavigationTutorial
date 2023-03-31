//
//  ProfileModifier.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileModifier: ViewModifier {
    
    @ObservedObject var vm: ViewModel
    @Binding var path: NavigationPath
    
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
                    FollowersView(followers: vm.currentUser.followers)
                    
                case .following:
                    FollowingView(following: vm.currentUser.following)
                    
                case let .otherProfile(otherUserId):
                    OtherProfileView(vm: vm, otherUserId: otherUserId)
//                        .id("\(otherUserId)\(path.count)")
                    
                case .otherFollowers:
                    OtherFollowersView(followers: vm.otherUser.followers, path: $path)
                    
                case .otherFollowing:
                    OtherFollowingView(following: vm.otherUser.following, path: $path)
                }
            }
            .task {
                vm.fetchProfile()
            }
    }
    
}
