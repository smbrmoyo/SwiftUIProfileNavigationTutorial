//
//  ProfileEditButtonView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileEditButtonView: View {
    var body: some View {
        
            HStack {
                Spacer()
                
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .circular)
                            .fill(.white)
                            .shadow(radius: 5)
                        
                        Text ("Edit Profile")
                            .foregroundColor(.black)
                            .font(.subheadline)
                            .bold ()
                            .frame(width: 140, height: 32)
                        
                    }
                    .buttonStyle(.bordered)
                    .frame(width: 140, height: 48)
                    
                
                Spacer()
            }
            
           
        
    }
}

struct ProfileEditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditButtonView()
    }
}
