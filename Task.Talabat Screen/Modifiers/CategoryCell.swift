//
//  CategoryCell.swift
//  Task.Talabat Screen
//
//  Created by Mustafa Nour on 03/07/2025.
//

import Foundation
import SwiftUI

struct CategoryCell: View {
    let category: Category
    var body: some View {
        VStack(spacing: 8) {
            Image(category.iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 56, height: 56)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(.systemGray6))
                )
            Text(category.name)
                .font(.system(size: 14, weight: .medium))
                .multilineTextAlignment(.trailing)
                .foregroundColor(.black)
        }
    }
}
