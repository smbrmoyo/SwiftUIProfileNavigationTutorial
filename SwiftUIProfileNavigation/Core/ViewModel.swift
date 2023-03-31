//
//  ViewModel.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var currentUser: User = User.mockUser

}
