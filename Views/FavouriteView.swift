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
                    FavouriteCard(CarBrand: vehicle.api.make,
                                  CarModel: vehicle.api.model,
                                  CarYear: vehicle.api.year,
                                  CarImage: vehicle.json.imageName)
                    .onTapGesture {
                        selectedCard = vehicle
                        isCarDetailsVisible = true
                    }
                }
            }
            .overlay(
//                withAnimation(Animation.timingCurve(0.2, 0.8, 0.6, 1.0)) {
                    CarDetails(CarBrand: selectedCard?.api.make ?? "",
                               CarModel: selectedCard?.api.model ?? "",
                               CarYear: selectedCard?.api.year ?? 0,
                               CarImage: selectedCard?.json.imageName ?? "",
                               CarAcceleration: selectedCard?.json.acceleration ?? 0.0,
                               CarTopSpeed: selectedCard?.json.topSpeed ?? 0,
                               CarHorsePower: selectedCard?.json.horsepower ?? 0,
                               CarMPGCombined: selectedCard?.api.combination_mpg ?? 0,
                               CarMPGCity: selectedCard?.api.city_mpg ?? 0,
                               CarEngineType: selectedCard?.json.engineType ?? "",
                               isCarDetailsVisible: $isCarDetailsVisible)
                        .opacity(isCarDetailsVisible ? 1 : 0)
                        .animation(.easeInOut)
//                }
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
