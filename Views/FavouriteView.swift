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
    @Binding var selectedVehicle: Vehicle?
    
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
                CarDetails(vehicle: Vehicle(make: selectedCard?.make ?? "",
                                            model: selectedCard?.model ?? "",
                                            year: selectedCard?.year ?? 0,
                                            drive: selectedCard?.drive ?? "AWD",
                                            city_mpg: selectedCard?.city_mpg ?? 24,
                                            combination_mpg: selectedCard?.combination_mpg ?? 19,
                                            cylinders: selectedCard?.cylinders ?? 8,
                                            acceleration: selectedCard?.acceleration ?? 4.7,
                                            horsepower: selectedCard?.horsepower ?? 468,
                                            engineType: selectedCard?.engineType ?? "V8",
                                            imageName: selectedCard?.imageName ?? "porsche-cayenne-S2-coupe",
                                            topSpeed: selectedCard?.topSpeed ?? 270),
                           
                           isCarDetailsVisible: $isCarDetailsVisible,
                           selectedVehicle: $selectedVehicle)
                           
                           
                        .opacity(isCarDetailsVisible ? 1 : 0)
                        .animation(.easeInOut)
            )
        }
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView(selectedVehicle: .constant(PorschePanameraTurboS), vehicles:
                                 [PorscheCayenneTurboGT,
                                 PorschePanameraTurboS,
                                 Porsche911Targa,
                                 PorscheTaycanTurboS,
                                 PorschePanameraTurboS,
                                 PorscheCayenneTurboGT])
    }
}

