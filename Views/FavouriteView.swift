//
//  FavouriteView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 23.06.2023.
//

import SwiftUI

struct FavouriteView: View {
    
    /// Structure accepts an array of vehicles
    
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
//                    .hoverEffect(.automatic)
//                    .scaleEffect(vehicle.isHovered ? 1.05 : 1.0)
//                    .animation(.easeInOut(duration: 0.2)) // Анимация эффекта
//                    .onHover { isHovered in
//                        vehicle.isHovered = isHovered
//                    }
                }
            }
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
