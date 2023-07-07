//
//  HomeView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var CurrentVehicle: Vehicle?
    
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
                CarInfo(vehicle: Vehicle(make: CurrentVehicle?.make ?? "Porsche",
                                         model: CurrentVehicle?.model ?? "Cayenne S Coupe",
                                         year: CurrentVehicle?.year ?? 2024,
                                         drive: CurrentVehicle?.drive ?? "AWD",
                                         city_mpg: CurrentVehicle?.city_mpg ?? 24,
                                         combination_mpg: CurrentVehicle?.combination_mpg ?? 19,
                                         cylinders: CurrentVehicle?.cylinders ?? 8,
                                         acceleration: CurrentVehicle?.acceleration ?? 4.7,
                                         horsepower: CurrentVehicle?.horsepower ?? 468,
                                         engineType: CurrentVehicle?.engineType ?? "V8",
                                         imageName: CurrentVehicle?.imageName ?? "porsche-cayenne-S2-coupe",
                                         topSpeed: CurrentVehicle?.topSpeed ?? 270))
                
                TechnicalSpecs(Acceleration: CurrentVehicle?.acceleration ?? 4.7,
                               TopSpeed: CurrentVehicle?.topSpeed ?? 270,
                               HP: CurrentVehicle?.horsepower ?? 468,
                               MPG: "\(String(CurrentVehicle?.combination_mpg ?? 19))/\(String(CurrentVehicle?.city_mpg ?? 24))",
                               Engine: CurrentVehicle?.engineType ?? "V8")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(CurrentVehicle: .constant(PorscheCayenneTurboGT))
    }
}
