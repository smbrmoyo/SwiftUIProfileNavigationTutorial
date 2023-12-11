//
//  ViewModel.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var currentUser: User = User.emptyUser
    @Published var profileUIState: UIState = .loading
    
    @Published var otherUser: User = User.emptyUser
    @Published var otherProfileUIState: UIState = .loading
    @Published var isFollowing: Bool = true
    @Published var previousUserId: String = ""
    
    ///
    
    func fetchProfile() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.currentUser = User.mockUser
            self.currentUser.followers = User.mockAllUsers.filter { user in
                user.id != "lebronjames@gmail.com"
            }
            self.currentUser.following = User.mockAllUsers.filter { user in
                user.id != "lebronjames@gmail.com"
            }
            self.profileUIState = .loaded
        }
        
    }
    
    
    func fetchOtherProfile(otherUserId: String) {
        
        if previousUserId != otherUserId {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.otherUser = User.mockAllUsers.first(where: { $0.id == otherUserId })!
                self.previousUserId = self.otherUser.id
                self.otherUser.followers = User.mockAllUsers.filter { user in
                    user.id != otherUserId
                }
                self.otherUser.following = User.mockAllUsers.filter { user in
                    user.id != otherUserId
                }
                self.otherProfileUIState = .loaded
            }
        }
        
    }
    
    
    func resetOtherProfile(otherUserId: String) {
        
        if previousUserId != otherUserId {
            DispatchQueue.main.async {
                self.otherProfileUIState = .loading
            }
        }
        
    }
}
