//
//  Category.swift
//  Task.Talabat Screen
//
//  Created by Mustafa Nour on 03/07/2025.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
       let name: String
       let iconName: String
       let isFast: Bool
}

struct Spot: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let rating: Double
    let reviews: String
    let isPro: Bool
}
