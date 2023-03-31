//
//  ProfileFilterBarView.swift
//  SwiftUIProfileNavigation
//
//  Created by Brian Moyou on 31.03.23.
//

import SwiftUI

enum ProfilePostsFilter: Int, CaseIterable {
    case myPosts
    case mentions
    
    var title: String {
        
        switch self {
        case .myPosts: return "list.bullet"
        case .mentions: return "at"
        }
        
    }
}

struct ProfileFilterBarView: View {
    
    @State var selectedFilter = ProfilePostsFilter.myPosts
    @Namespace private var profileAnimation
    
    var body: some View {
        HStack {
            
            ForEach (ProfilePostsFilter.allCases, id: \.rawValue) { item in
                VStack {
                    Image(systemName: item.title)
                        .font(.subheadline)
                        .fontWeight (selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                        .frame(height: 20)
                    
                    if selectedFilter == item {
                        Capsule ()
                            .foregroundColor (Color (.systemPurple))
                            .frame (height: 3)
                            .matchedGeometryEffect(id: "filter", in: profileAnimation)
                    }
                    else {
                        Capsule ()
                            .foregroundColor (Color(.clear))
                            .frame (height: 3)
                    }
                }
                
                .onTapGesture {
                    withAnimation (.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(y: 16))
    }
}

struct ProfileFilterBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFilterBarView()
    }
}
