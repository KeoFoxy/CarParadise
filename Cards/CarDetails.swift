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
    
    var vehicle: CarModel
        
    var CarAcceleration: Double
    var CarTopSpeed: Int
    var CarHorsePower: Int
    var CarMPGCombined: Int
    var CarMPGCity: Int
    var CarEngineType: String
    
    @Binding var isCarDetailsVisible: Bool

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
                
                TechnicalSpecs(Acceleration: CarAcceleration,
                               TopSpeed: CarTopSpeed,
                               HP: CarHorsePower,
                               MPG: "\(String(CarMPGCombined))/\(String(CarMPGCity))",
                               Engine: CarEngineType)
                CustomButton(title: "More details", action: {})
                    .background(.clear)
            }
            .padding(30)
        }
    }
}

//struct CarDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        CarDetails(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt", CarAcceleration: 3.1, CarTopSpeed: 296, CarHorsePower: 640, CarMPGCombined: 19, CarMPGCity: 24, CarEngineType: "V8")
//    }
//}
