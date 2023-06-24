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
            Color.black//.ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(vehicles, id: \.self) { vehicle in
                    FavouriteCard(CarBrand: vehicle.api.make,
                                  CarModel: vehicle.api.model,
                                  CarYear: vehicle.api.year,
                                  CarImage: vehicle.json.imageName)
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
