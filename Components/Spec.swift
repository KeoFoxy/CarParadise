//
//  Spec.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct Spec: View {
    
    // Custom value for any spec
    var systemImgName: String
    var specText: String
    var specValue: String
    
    // Default component parameter
    
    var mainFontSize: CGFloat = 24
    var secondaryFontSize: CGFloat = 18
    
    var textStyle: Font.TextStyle = .title
    var fontStyle: String = "Porsche Next TT"
    
    var iconWidth: CGFloat = 30
    var iconHeight: CGFloat = 30
    
    var fontColor: Color = .black
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: systemImgName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.07)
            Text(specText)
                .foregroundColor(fontColor)
                .font(.custom(fontStyle, size: secondaryFontSize, relativeTo: textStyle))
            Spacer()
            Text(specValue)
                .foregroundColor(fontColor)
                .font(.custom(fontStyle, size: mainFontSize, relativeTo: textStyle))
                .frame(width: .infinity, alignment: .leading)
//                .padding(.leading, 20)
        }
        .frame(width: 250, height: .infinity)
    }
}

struct Spec_Previews: PreviewProvider {
    static var previews: some View {
        Spec(systemImgName: "speedometer", specText: "0-100", specValue: "3.2")
    }
}
