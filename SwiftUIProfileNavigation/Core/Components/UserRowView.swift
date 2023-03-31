//
//  UserRowView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct UserRowView: View {
    
    var user: User
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(.white)
                            .shadow(radius: 5)
            
            HStack(spacing: 20){
               
                Image(systemName: "person")
                    .font(.system(size: 30))
                    .frame(width: 60, height: 60)
                    .foregroundColor(.purple)
                    .overlay(RoundedRectangle(cornerRadius: 30) .stroke(Color.purple, lineWidth: 2))
                
                VStack(alignment: .leading){
                    Text(user.displayName)
                        .bold()
                        .foregroundColor(.black)
                    
                    Text(user.username)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray))
                }
                
                Spacer()
                
                
            }
            .padding(.horizontal)
            
        }
        .frame(height: 100)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(user: User.mockUser)
    }
}
