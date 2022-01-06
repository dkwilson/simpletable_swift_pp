//
//  ContentView.swift
//  simpletable
//
//  Created by Dkeith Wilson on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Resturant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Gram Avenue Meats and Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrfina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"
    
    ]
    
    var restaurantImages = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrfina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self) { index in
                HStack {
                    Image(restaurantImages[index])
                        .resizable()
                        .frame(width: 40, height: 40)
                        
                    Text(restaurantNames[index])
                }
                    
            }
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
