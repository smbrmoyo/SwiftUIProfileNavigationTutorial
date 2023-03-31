//
//  ProfileInfoView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct ProfileInfoView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                // TODO: If is playing, switch to playing now
                Label("Last played: March 31st", systemImage: "clock")
                    .foregroundColor(.gray)
                Label("Crypto.com Arena", systemImage: "map")
                    .foregroundColor(.gray)
            }
            .padding(.leading)
            
            Spacer()
            
        }
    }
    
}

struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView()
    }
}
