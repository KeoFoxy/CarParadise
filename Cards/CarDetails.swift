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

    // MARK: Body
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThinMaterial)
            .shadow(radius: 5)
            .overlay(
                HStack {
                    cardText
                    Spacer()
                    image
                }
            )
            .frame(width: .infinity, height: 650)
            .padding(20)
    }
    
    // MARK: Card text
    var cardText: some View {
        VStack(alignment: .leading) {
            Text(CarBrand.uppercased())
                .font(.custom(FontStyle, size: BrandFontSize).weight(.bold))
                .foregroundColor(BrandFontColor)
                .frame(width: .infinity, alignment: .leading)
            
            Text("\(String(CarYear).uppercased()) - \(CarModel)")
                .font(.custom(FontStyle, size: ModelFontSize).weight(.medium))
                .foregroundColor(ModelFontColor)
                .multilineTextAlignment(.leading)
        }
        .padding(.leading, 10)
    }
    
    // MARK: Image
    var image: some View {
        Image(CarImage)
            .resizable()
            .offset(x: -100, y: 0)
            .scaleEffect(x: -1, y: 1)
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct CarDetails_Previews: PreviewProvider {
    static var previews: some View {
        CarDetails(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt")
    }
}
