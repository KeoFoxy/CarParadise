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
        
    var CarBrand: String
    
    /// Car brand comes from vehicle.make == BRAND
    /// But it is in lower case so it must be converted to capital
    /// Font size must be much bigger than font size of CarModel
    
    var CarModel: String
    
    /// Car model also comes from vehicle.model = MODEL
    /// It will also be converted to capital as well as everything else
    /// but with smaller font size
    
    var CarYear: Int
    
    /// Car year in API marked as Int and it Vehicle model it is also an Int
    /// But it must be converted to String to remove comma in thousands
    
    var CarImage: String
    
    /// Car Image comes from project assets
    /// For now there is no free API that provides free imgs by name
    /// Extra difficult is that I need a certain image
    
    var CarAcceleration: Double
    var CarTopSpeed: Int
    var CarHorsePower: Int
    var CarMPGCombined: Int
    var CarMPGCity: Int
    var CarEngineType: String
    
    // MARK: Default parameters
    
    var FontStyle: String = "Porsche Next TT"
    
    /// Default font style is "Porsche Next TT" but it can be changed
    /// when you create an instance of CarInfo
    
    var BrandFontColor: Color = .black
    var ModelFontColor: Color = Color(hex: "#555555")
    
    var BrandFontSize: CGFloat = 28
    var ModelFontSize: CGFloat = 16
    
    /// Default BrandFontColor is black but it can be changed
    /// when you create an instance of CarInfo
    
    /// ModelFontColor uses an extension for Color
    /// to be able to use hex colors
    
    /// Default font size values for brand and model
    
    @Binding var isCarDetailsVisible: Bool

    // MARK: Body
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(mainGray)
                .shadow(radius: 5)
                .frame(width: .infinity, height: 620)
                .padding(20)
            
            VStack {
                HStack {
                    Spacer()
                    CloseButton(action: {
                        isCarDetailsVisible = false
                    })
//                    .padding(.top, 5)
                }
                CarInfo(CarBrand: CarBrand, CarModel: CarModel, CarYear: CarYear)
                Image(CarImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(x: -1, y: 1)
                TechnicalSpecs(Acceleration: CarAcceleration,
                               TopSpeed: CarTopSpeed,
                               HP: CarHorsePower,
                               MPG: "\(String(CarMPGCombined))/\(String(CarMPGCity))",
                               Engine: CarEngineType)
                CustomButton(title: "Drive this car", action: {})
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
