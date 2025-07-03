//
//  SpotCell.swift
//  Task.Talabat Screen
//
//  Created by Mustafa Nour on 03/07/2025.
//

import SwiftUI
import Foundation

struct SpotCell: View {
    let spot: Spot
    @State private var isFavorite = false
    var body: some View {
        
        
        
        ZStack(alignment: .topTrailing) {
            
            VStack(alignment: .leading, spacing: 2) {
                Image(spot.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 170, height: 170)
                    .clipped()
                    .background(.white)
                HStack (spacing: 2){
                    Text(spot.name)
                        .font(.headline)
                        .padding([.leading, .bottom, .trailing], 8)
                }
                
                HStack {
                Image(systemName: "star.fill")
                   .frame(width: 10, height: 10)
                   .foregroundStyle(.starYellow)
                   .padding(.leading,2)
                    
                    Text(String(spot.rating))
                        .font(.title3)
                    Text("(\(spot.reviews))")
                        .foregroundStyle(.gray)
                }.padding([.top,.leading], 4)
                
                
            }
            
            Button(action: {
                isFavorite.toggle()
            }) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(isFavorite ? .red : .white)
                    .padding(7)
                    .background(Color.black.opacity(0.5))
                    .clipShape(Circle())
            }
            .padding(8)
        }
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}
            
            
            
            
            
//            VStack(spacing: 2) {
//                Image(spot.imageName)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 175 , height: 175)
//                    .background(
//                        RoundedRectangle(cornerRadius: 14)
//                            .fill(Color(.white))
//                        
//                    )
//                
//                Text(spot.name)
//                    .font(.system(size: 18, weight: .medium))
//                    .multilineTextAlignment(.trailing)
//                    .foregroundColor(.black)
//                
//                HStack {
//                    Image(systemName: "star.fill")
//                        .frame(width: 20, height: 20)
//                }
//            }
    

