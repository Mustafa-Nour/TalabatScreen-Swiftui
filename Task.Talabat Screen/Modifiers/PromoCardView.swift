//
//  PromoCardView.swift
//  Task.Talabat Screen
//
//  Created by Mustafa Nour on 03/07/2025.
//

import SwiftUI

struct ProPromoCardView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image("pro")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.top, 8)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("pro")
                        .font(.caption2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2)
                        .background(Color.white.opacity(0.25))
                        .cornerRadius(6)
                    
                    Text("Start ordering like a pro")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Join")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                Text("On food & groceries for EGP 79/mo")
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding(.vertical, 8)
        }
        .frame(maxWidth: .infinity,maxHeight: 100)
        .padding(.horizontal, 12)
        .background(Color.purple)
        .cornerRadius(18)
        .padding(.horizontal)
    }
}
