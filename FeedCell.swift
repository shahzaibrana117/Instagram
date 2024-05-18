//
//  FeedCell.swift
//  Instagram
//
//  Created by apple on 8/22/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
           
            HStack {
                Image("imran khan-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("imran khan")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            
            
            Image("imran khan-2")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // action buttons
            
            HStack(spacing: 16) {
                Button {
                print("Like post")
            } label: {
                Image(systemName: "heart")
                    .imageScale(.large)
            }
                
                Button {
                print("Comment on post")
            } label: {
                Image(systemName: "bubble.right")
                    .imageScale(.large)
            }
                
                Button {
                print("Share post")
            } label: {
                Image(systemName: "paperplane")
                    .imageScale(.large)
            }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            
            // like label
            
            Text("23 likes")
                           .font(.footnote)
                           .fontWeight(.semibold)
                      frame(maxWidth: .infinity, alignment: .leading)
                           .padding(.leading, 10)
                           .padding(.top, 1)
                       
            
          
            
            HStack {
                Text("imran khan").fontWeight(.semibold) +
                Text("This is some test caption for now this some test caption")
            }
            frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
           .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                           .font(.footnote)
                      frame(maxWidth: .infinity, alignment: .leading)
                           .padding(.leading, 10)
                           .padding(.top, 1)
                           .foregroundColor(.gray)
            
            }
        }
    }


struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()

    }
}
