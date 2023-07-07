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
    
    var vehicle: Vehicle
    
    var style: CarStyle = CarStyle(fontStyle: "Porsche Next TT",
                                     brandFontColor: .black,
                                     modelFontColor: Color(hex: "#555555"),
                                     brandFontSize: 40,
                                     modelFontSize: 20)

    
    // MARK: Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: -15) {
            Image(vehicle.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(x: -1, y: 1)
            Text(vehicle.make.uppercased())
                .font(.custom(style.fontStyle, size: style.brandFontSize).weight(.bold))
                .foregroundColor(style.brandFontColor)
                
            Text("\(String(vehicle.year).uppercased()) - \(vehicle.model)")
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
        CarInfo(vehicle: Vehicle(make: "Porsche", model: "Cayenne S Coupe", year: 2024, drive: "AWD", city_mpg: 24, combination_mpg: 19, cylinders: 8, acceleration: 4.7, horsepower: 468, engineType: "V8", imageName: "porsche-cayenne-S2-coupe", topSpeed: 270))
    }
}
