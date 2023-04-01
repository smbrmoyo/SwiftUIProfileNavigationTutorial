//
//  ProfleHeader.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileHeader: View {
    
    var user: User
    
    var body: some View {
        HStack {
            
            Image(systemName: "person")
                .font(.system(size: 35))
                .frame(width: 80, height: 80)
                .foregroundColor(.purple)
                .overlay(RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.purple, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text("\(user.displayName)")
                    .bold()
                
                Text("Joined November 2021")
                    .foregroundColor(.gray)
            }
            .padding(.leading, 5)
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader(user: User.mockUser)
    }
}
