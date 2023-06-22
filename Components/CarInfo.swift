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
    
    var FontStyle: String = "Porsche Next TT"
    
    /// Default font style is "Porsche Next TT" but it can be changed
    /// when you create an instance of CarInfo
    
    var BrandFontColor: Color = .black
    var ModelFontColor: Color = Color(hex: "#555555")
    
    var BrandFontSize: CGFloat = 40
    var ModelFontSize: CGFloat = 20
    
    /// Default BrandFontColor is black but it can be changed
    /// when you create an instance of CarInfo
    
    /// ModelFontColor uses an extension for Color
    /// to be able to use hex colors
    
    /// Default font size values for brand and model
    
    // MARK: Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: -15) {
            Text(CarBrand.uppercased())
                .font(.custom(FontStyle, size: BrandFontSize).weight(.bold))
                .foregroundColor(BrandFontColor)
                
            Text("\(String(CarYear).uppercased()) - \(CarModel)")
                .font(.custom(FontStyle, size: ModelFontSize).weight(.medium))
                .foregroundColor(ModelFontColor)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}


// MARK: Preview
struct CarInfo_Previews: PreviewProvider {
    static var previews: some View {
        CarInfo(CarBrand: "porsche", CarModel: "Cayenne", CarYear: 2024)
    }
}
