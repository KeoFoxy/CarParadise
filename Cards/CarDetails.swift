//
//  CarDetails.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 24.06.2023.
//

import SwiftUI

struct CarDetails: View {
    
    // MARK: Card Description
    /// CarInfo receives an object of type Vehicle
    /// And prints data out of it
    /// Now just for visualise UI used hardcoded values
    
    // MARK: Parameters
    
    var vehicle: Vehicle
        
//    var CarAcceleration: Double
//    var CarTopSpeed: Int
//    var CarHorsePower: Int
//    var CarMPGCombined: Int
//    var CarMPGCity: Int
//    var CarEngineType: String
    
    @Binding var isCarDetailsVisible: Bool
    @Binding var selectedVehicle: Vehicle?

    // MARK: Body
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(mainGray)
                .shadow(radius: 5)
                .frame(width: .infinity, height: 560)
                .padding(20)
            
            VStack {
                HStack {
                    Spacer()
                    CloseButton(action: {
                        isCarDetailsVisible = false
                    })
                }
                CarInfo(vehicle: vehicle)
                
                TechnicalSpecs(Acceleration: vehicle.acceleration,
                               TopSpeed: vehicle.topSpeed,
                               HP: vehicle.horsepower,
                               MPG: "\(String(vehicle.combination_mpg))/\(String(vehicle.city_mpg))",
                               Engine: vehicle.engineType)
                CustomButton(title: "Order", action: {
                    selectedVehicle = vehicle
                })
                    .background(.clear)
            }
            .padding(30)
        }
    }
}

struct CarDetails_Previews: PreviewProvider {
    static var previews: some View {
        CarDetails(vehicle: Vehicle(make: "Porsche", model: "Cayenne S Coupe", year: 2024, drive: "AWD", city_mpg: 24, combination_mpg: 19, cylinders: 8, acceleration: 4.7, horsepower: 468, engineType: "V8", imageName: "porsche-cayenne-S2-coupe", topSpeed: 270), isCarDetailsVisible: .constant(true), selectedVehicle: .constant(PorschePanameraTurboS))
    }
}
