//
//  OtherProfileView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct OtherProfileView: View {
    
    @ObservedObject var vm: ViewModel
    var otherUserId: String
    
    var body: some View {
        VStack {
            
            if vm.otherProfileUIState == .loading {
                ProgressView()
            } else {
                VStack{
                    ProfileHeader(user: vm.otherUser)
                    
                    ProfileInfoView()
                    
                    OtherFollowCount(followers: vm.otherUser.followers,
                                           following: vm.otherUser.following)
                    
                    FollowButton(isFollowing: $vm.isFollowing)
                    
                    ProfileFilterBarView()
                    
                    ProfileListView()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    
                    ToolbarItem(placement: .principal) {
                        
                        Text("\(vm.otherUser.username)")
                            .font(.system(size: 24))
                            .bold()
                            .accessibilityAddTraits(.isHeader)
                    }
                }
                
            }
        }
        .task {
            vm.resetOtherProfile(otherUserId: otherUserId)
            vm.fetchOtherProfile(otherUserId: otherUserId)
        }
    }
}

struct OtherProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OtherProfileView(vm: ViewModel(), otherUserId: "")
    }
}
