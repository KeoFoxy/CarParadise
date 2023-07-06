//
//  HomeView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    let CurrentVehicle: Vehicle
    
    var body: some View {
        ZStack {
            mainGray
                .ignoresSafeArea()
            
            VStack{
                HStack {
                    Text("Your Current Vehicle")
                        .font(.custom("Porsche Next TT", size: 52).weight(.bold))
                        .foregroundColor(Color(hex: "#555555"))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(20)
                    //            Spacer()
//                Image(CurrentVehicle.json.imageName)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .scaleEffect(x: -1, y: 1)
                CarInfo(vehicle: CarModel(CarBrand: CurrentVehicle.make,
                                          CarModel: CurrentVehicle.model,
                                          CarYear: CurrentVehicle.year,
                                          CarImage: CurrentVehicle.imageName))
                
                TechnicalSpecs(Acceleration: CurrentVehicle.acceleration,
                               TopSpeed: CurrentVehicle.topSpeed,
                               HP: CurrentVehicle.horsepower,
                               MPG: "\(String(CurrentVehicle.combination_mpg))/\(String(CurrentVehicle.city_mpg))",
                               Engine: CurrentVehicle.engineType)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(CurrentVehicle: PorscheCayenneTurboGT)
    }
}
