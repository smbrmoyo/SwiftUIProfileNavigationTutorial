//
//  FollowButton.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct FollowButton: View {
    
    @Binding var isFollowing: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isFollowing.toggle()
            } label: {
                Text (isFollowing ? "Following" : "Follow")
                    .foregroundColor(isFollowing ? .black : .white)
                    .font (.subheadline).bold ()
                    .frame(width: 120, height: 32)
                    
            }
            .buttonStyle(.bordered)
            .background(isFollowing ? .white : Color(.systemPurple))
            .cornerRadius(20)
            .shadow(color: Color.gray, radius: 3, x: 2, y: 2)
            
            Spacer()
        }
    }
}

struct FollowButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowButton(isFollowing: .constant(true))
    }
}
