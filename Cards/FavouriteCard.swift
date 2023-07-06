//
//  FavouriteCard.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 23.06.2023.
//

import SwiftUI

struct FavouriteCard: View {
    
    // MARK: Card Description
    /// CarInfo receives an object of type Vehicle
    /// And prints data out of it
    
    // MARK: Parameters
        
    var vehicle: CarModel
    /// vehicle contains data about vehicle
    /// such as `Brand`, `Model`, `Year`, `Image`
    
    var style: CarStyle = CarStyle(fontStyle: "Porsche Next TT",
                                     brandFontColor: .black,
                                     modelFontColor: Color(hex: "#555555"),
                                     brandFontSize: 28,
                                     modelFontSize: 16)
    /// Style may be changed
    
    // MARK: Body
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(mainGray)
            .shadow(radius: 5)
            .overlay(
                HStack {
                    cardText
                    Spacer()
                    image
                }
            )
            .padding(5)
            .frame(width: .infinity, height: 180)
    }
    
    // MARK: Card text
    var cardText: some View {
        VStack(alignment: .leading) {
            Text(vehicle.CarBrand.uppercased())
                .font(.custom(style.fontStyle, size: style.brandFontSize).weight(.bold))
                .foregroundColor(style.brandFontColor)
                .frame(width: .infinity, alignment: .leading)
            
            Text("\(String(vehicle.CarYear).uppercased()) - \(vehicle.CarModel)")
                .font(.custom(style.fontStyle, size: style.modelFontSize).weight(.medium))
                .foregroundColor(style.modelFontColor)
                .multilineTextAlignment(.leading)
        }
        .padding(.leading, 10)
    }
    
    // MARK: Image
    var image: some View {
        Image(vehicle.CarImage)
            .resizable()
            .offset(x: -100, y: 0)
            .scaleEffect(x: -1, y: 1)
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
// MARK: Preview
struct FavouriteCard_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteCard(vehicle: CarModel(CarBrand: "Porsche", CarModel: "Cayenne Turbo GT", CarYear: 2024, CarImage: "porsche_cayenne_turbo_gt"))
    }
}
