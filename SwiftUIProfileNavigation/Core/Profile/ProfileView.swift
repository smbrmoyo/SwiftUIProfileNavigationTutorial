//
//  ProfileView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var vm: ViewModel = ViewModel()
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                
                if vm.profileUIState == .loading {
                    ProgressView()
                } else {
                    ProfileHeader(user: vm.currentUser)
                    
                    ProfileInfoView()
                    
                    ProfileFollowCountView(followers: vm.currentUser.followers,
                                           following: vm.currentUser.following)
                    
                    ProfileEditButtonView()
                    
                    ProfileFilterBarView()
                    
                    ProfileListView()
                }
                
            }
            .modifier(ProfileModifier(vm: vm, path: $path))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
