//
//  FavouriteView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 23.06.2023.
//

import SwiftUI

struct FavouriteView: View {
    var body: some View {
        ScrollView(.vertical) {
            FavouriteCard(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
            FavouriteCard(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
            FavouriteCard(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
            FavouriteCard(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
            FavouriteCard(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
            FavouriteCard(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
        }
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    }
}
