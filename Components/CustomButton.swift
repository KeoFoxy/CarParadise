//
//  CustomButton.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 25.06.2023.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    
    var buttonWidth: CGFloat = 250
    var buttomHeight: CGFloat = 20
    
    var buttomBackgroundColor: Color = .black
    
    var action: () -> Void
    
    var FontStyle: String = "Porsche Next TT"
    
    var body: some View {
        Button(action: action) {
            Text(title.uppercased())
                .font(.custom(FontStyle, size: 24).weight(.bold))
                .frame(width: buttonWidth, height: buttomHeight)
                .foregroundColor(topYellow)
                .padding()
                .background(buttomBackgroundColor)
                .cornerRadius(10)
//                .frame(minWidth: 120, maxWidth: .infinity, minHeight: 20)
        }
        .buttonStyle(BorderlessButtonStyle())
    }
    
    
}

struct CloseButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 24, height: 24)
                Image(systemName: "xmark")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}

//struct CloseButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CloseButton(action: {})
//    }
//}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title:"Drive this car", action: {} )
    }
}
