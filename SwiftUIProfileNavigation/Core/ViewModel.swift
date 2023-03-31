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
}
