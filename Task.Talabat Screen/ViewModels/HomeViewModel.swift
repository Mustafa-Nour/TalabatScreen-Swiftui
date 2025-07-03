//
//  HomeViewModel.swift
//  Task.Talabat Screen
//
//  Created by Mustafa Nour on 03/07/2025.
//

import SwiftUI
import Foundation

class HomeViewModel: ObservableObject {
    @Published var categories: [Category] = [
        Category(name: "Food", iconName: "Food", isFast: false),
        Category(name: "talabatmart", iconName: "talabatmart", isFast: true),
        Category(name: "Gifts&Donate", iconName: "Gifts", isFast: true),
        Category(name: "Groceries", iconName: "Groceries", isFast: false),
        Category(name: "Health&beauty", iconName: "Health&Beauty", isFast: false),
        Category(name: "store", iconName: "store", isFast: false)
    ]
    
    @Published var spots: [Spot] = [
        Spot(name: "Asian Corner", imageName: "asianCorner", rating: 4.7, reviews: "1000+", isPro: false),
        Spot(name: "GRIIX", imageName: "GRIIX", rating: 5, reviews: "1000+", isPro: true),
        Spot(name: "Fried", imageName: "Fried", rating: 4.9, reviews: "1000+", isPro: true)
   ]
}
