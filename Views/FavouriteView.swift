//
//  FavouriteView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 23.06.2023.
//

import SwiftUI

struct FavouriteView: View {
    
    /// Structure accepts an array of vehicles
    
    @State private var isCarDetailsVisible = false
    @State private var selectedCard: Vehicle? = nil
    
    let vehicles: [Vehicle]
    
    var body: some View {
        ZStack {
            bgYellow.ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(vehicles, id: \.self) { vehicle in
                    FavouriteCard(vehicle: CarModel(CarBrand: vehicle.make,
                                                    CarModel: vehicle.model,
                                                    CarYear: vehicle.year,
                                                    CarImage: vehicle.imageName))
                    .onTapGesture {
                        selectedCard = vehicle
                        isCarDetailsVisible = true
                    }
                }
            }
            .overlay(
                CarDetails(vehicle: CarModel(CarBrand: selectedCard?.make ?? "",
                                             CarModel: selectedCard?.model ?? "",
                                             CarYear: selectedCard?.year ?? 0,
                                             CarImage: selectedCard?.imageName ?? ""),
                                             CarAcceleration: selectedCard?.acceleration ?? 0.0,
                                             CarTopSpeed: selectedCard?.topSpeed ?? 0,
                                             CarHorsePower: selectedCard?.horsepower ?? 0,
                                             CarMPGCombined: selectedCard?.combination_mpg ?? 0,
                                             CarMPGCity: selectedCard?.city_mpg ?? 0,
                                             CarEngineType: selectedCard?.engineType ?? "",
                                             isCarDetailsVisible: $isCarDetailsVisible)
                        .opacity(isCarDetailsVisible ? 1 : 0)
                        .animation(.easeInOut)
            )
        }
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView(vehicles: [PorscheCayenneTurboGT,
                                 PorschePanameraTurboS,
                                 Porsche911Targa,
                                 PorscheTaycanTurboS,
                                 PorschePanameraTurboS,
                                 PorscheCayenneTurboGT])
    }
}
