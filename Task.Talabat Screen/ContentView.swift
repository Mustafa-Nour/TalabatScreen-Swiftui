//
//  ContentView.swift
//  Task.Talabat Screen
//
//  Created by Mustafa Nour on 03/07/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var ViewModel = HomeViewModel()
    var body: some View {
        VStack(alignment: .leading , spacing: 10) {
            HStack(spacing: 2) {
                Text("Deliver to ")
                Text("Apartment").bold()
                Image(systemName: "chevron.down")
            }
            .padding(.trailing, 10)
            .foregroundColor(.white)
            .font(.headline)
            HStack (spacing: 2){
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 4)
                
                TextField("Search for Pizza", text: .constant(""))
                    .padding(10)
            }
            .background(Color.white)
            .cornerRadius(20)
            .frame( height:50 )
        }.padding()
            .background(Color.talabatOrange)
        Spacer()
        
        ScrollView {
        VStack (alignment: .leading ){
            // MARK: - Category Scroll View
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 17) {
                    ForEach(ViewModel.categories)  { cate in
                        VStack {
                            CategoryCell(category: cate)
                        }.frame(width: 60, height: 60)
                    }
                }.padding()
            }
            Text("Yalla, find the best spots for you")
                .font(.title2)
                .padding(.top, 16)
                .padding()
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(ViewModel.spots) { spot in
                        VStack {
                            SpotCell(spot: spot)
                        }
                    }
                }
            }
            .padding(.top,2)
            Text("Radeem and Save")
                .font(.title2)
                .padding(.leading,8)
                .padding(.top)
            HStack{
                Card(imgName: "t.circle.fill", Title: "2.935 points")
                Card(imgName: "v.circle.fill", Title: "2 vouchers")
                
            }
            ProPromoCardView()
                .padding(.top, 10)
        }
        .padding(.leading,4)
    }
 }
}
#Preview {
    ContentView()
}

struct Card: View {
    var imgName: String
    var Title: String
    var body: some View {
        
        HStack {
            Image(systemName: imgName)
                .foregroundColor(.orange)
                
            Text(Title)
                .font(.headline)
                .foregroundColor(.black)
            
        }
        .frame(width: 200,height: 60)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
        .padding(.leading,10)
    }
}
