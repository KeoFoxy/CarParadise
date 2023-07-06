//
//  CarInfo.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct CarInfo: View {
    
    // MARK: View Description
    
    /// CarInfo receives an object of type Vehicle
    /// And prints data out of it
    /// Now just for visualise UI used hardcoded values
    
    var vehicle: CarModel
    /// vehicle contains data about vehicle
    /// such as `Brand`, `Model`, `Year`, `Image`
    
    var style: CarStyle = CarStyle(fontStyle: "Porsche Next TT",
                                     brandFontColor: .black,
                                     modelFontColor: Color(hex: "#555555"),
                                     brandFontSize: 40,
                                     modelFontSize: 20)

    
    // MARK: Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: -15) {
            Image(vehicle.CarImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(x: -1, y: 1)
            Text(vehicle.CarBrand.uppercased())
                .font(.custom(style.fontStyle, size: style.brandFontSize).weight(.bold))
                .foregroundColor(style.brandFontColor)
                
            Text("\(String(vehicle.CarYear).uppercased()) - \(vehicle.CarModel)")
                .font(.custom(style.fontStyle, size: style.modelFontSize).weight(.medium))
                .foregroundColor(style.modelFontColor)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}


// MARK: Preview
struct CarInfo_Previews: PreviewProvider {
    static var previews: some View {
        CarInfo(vehicle: CarModel(CarBrand: "porsche", CarModel: "Cayenne", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt"))
    }
}
