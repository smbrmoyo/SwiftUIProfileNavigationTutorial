//
//  PostRowvIEW.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

struct PostRowView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.white)
                            .shadow(radius: 5)
            
            HStack(spacing: 20){
                
                Image(systemName: "pencil")
                    .font(.system(size: 30))
                    .frame(width: 60, height: 60)
                    .foregroundColor(.purple)
                    .overlay(RoundedRectangle(cornerRadius: 30) .stroke(Color.purple, lineWidth: 2))
                
                VStack(alignment: .leading){
                    Text("Mock Post")
                        .bold()
                        .foregroundColor(.black)
                    
                    Text("Mock Content")
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

struct PostRowvIEW_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView()
    }
}
