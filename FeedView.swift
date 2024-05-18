//
//  FeedView.swift
//  Instagram
//
//  Created by apple on 8/22/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            
        ScrollView {
            LazyVStack(spacing: 32) {
                ForEach(0 ... 10, id: \.self) { post in
                   FeedCell()
                }
            }
            
            .padding(.top, 8)
            }
        .navigationTitle("Feed")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image("insta")
                    .resizable()
                    .frame(width: 100, height: 32)
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "paperplane")
                    .imageScale(.large)
            }
        }
        
        }
    }
    
}


struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
.previewInterfaceOrientation(.portrait)
    }
}
