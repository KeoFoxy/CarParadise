//
//  Spec.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct Spec: View {
    
    // MARK: Parameters Description
    
    /// This component accepts data from the car model.
    /// The component is completely independent and
    /// can be used for any type of car vehicle.
    
    /// Variables of this component
    /// which are later used for its customization

    var specText: String
    var specValue: String
    
    /// Default component parameter
    /// You can adjust the font size if you want.
    /// By default it has 20 and 12 size
    /// The main is responsible for the characteristic (Spec Value),
    /// and the secondary is responsible
    /// for the text opposite the icon (Spec Text)
    
    var mainFontSize: CGFloat = 20
    
    /// You can also customize the font,
    /// for example, use their custom
    /// font for each car brand.
    /// The default font made by Porsche
    
    var fontStyle: String = "Porsche Next TT"
    
    /// Default text color is black
    /// It can also accept HEX color
    
    var fontColor: Color = .black
    
    // MARK: Body
    
    var body: some View {
        HStack(spacing: 10) {
            Text(specText)
                .foregroundColor(fontColor)
                .font(.custom(fontStyle, size: mainFontSize).weight(.medium))
            Spacer()
            Text(specValue)
                .foregroundColor(fontColor)
                .font(.custom(fontStyle, size: mainFontSize).weight(.bold))
        }
    }
}
// MARK: Preview
struct Spec_Previews: PreviewProvider {
    static var previews: some View {
        Spec(specText: "0-100", specValue: "3.1")
    }
}
