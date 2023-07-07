//
//  TabBarView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 24.06.2023.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedVehicle: Vehicle? = nil
    
    var cars: [Vehicle]
    var body: some View {
        TabView {
            HomeView(CurrentVehicle: $selectedVehicle)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            FavouriteView(selectedVehicle: $selectedVehicle, vehicles: cars)
                .tabItem {
                    Label("Available", systemImage: "car.2")
                }
//            CardView()
//                .tabItem {
//                    Label("Card", systemImage: "cart")
//                }
            
//            AccountView()
//                .tabItem {
//                    Label("Account", systemImage: "person")
//                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(cars: cars)
    }
}
