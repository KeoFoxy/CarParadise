//
//  CustomButton.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 25.06.2023.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 120, height: 20)
                .foregroundColor(topYellow)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
//                .frame(minWidth: 120, maxWidth: .infinity, minHeight: 20)
        }
    }
    
    
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title:"Order", action: {} )
    }
}
