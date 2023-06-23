//
//  HomeView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Your current vehicle")
                    .font(.custom("Porsche Next TT", size: 52).weight(.bold))
                    .foregroundColor(Color(hex: "#555555"))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(20)
//            Spacer()
            Image("porsche_cayenne_turbo_gt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(x: -1, y: 1)
            CarInfo(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024)
            TechnicalSpecs()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
