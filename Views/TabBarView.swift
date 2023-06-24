//
//  TabBarView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 24.06.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView(CurrentVehicle: PorscheCayenneTurboGT)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            FavouriteView(vehicles: cars)
                .tabItem {
                    Label("Favourite", systemImage: "heart")
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
        TabBarView()
    }
}
