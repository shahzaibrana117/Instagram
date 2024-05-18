//
//  ProfileView.swift
//  Instagram
//
//  Created by apple on 8/20/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItem: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
               
                VStack(spacing: 10) {
                    
        HStack {
            Image("imran khan")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            Spacer()
        
            HStack(spacing: 8) {
               UserStatView(value: 3, title: "Posts")
                
                UserStatView(value: 8, title: "Followers")
                
                UserStatView(value: 1, title: "Following")
            }
        }
                    .padding(.horizontal)
                   
                    
                   
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Imran Ahmad Khan Naizi")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Hum na baaz aya gy mohbat se")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                   
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
               
                
                LazyVGrid(columns: gridItem, spacing: 1) {
                    ForEach(0 ... 3, id: \.self) { index in
                        Image("imran khan-2")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                     }
                }
            }
        }
    }
}
    
        struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()

       
    }
        }
