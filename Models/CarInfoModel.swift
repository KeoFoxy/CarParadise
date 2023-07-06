//
//  CarInfoModel.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 25.06.2023.
//

import Foundation
import SwiftUI
// MARK: Car Data protocol

protocol CarData {
    var CarBrand: String { get }
    var CarModel: String { get }
    var CarYear: Int { get }
    var CarImage: String { get }
}

protocol CarUIStyle {
    var fontStyle: String { get }
    var brandFontColor: Color { get }
    var modelFontColor: Color { get }
    var brandFontSize: CGFloat { get }
    var modelFontSize: CGFloat { get }
}

// MARK: Car Model

struct CarModel: CarData {
    var CarBrand: String
    var CarModel: String
    var CarYear: Int
    var CarImage: String
    /// Car Image located in project assets
    /// For now there is no free API that provides images by name
    /// Extra difficult is that I need a certain image
}

// MARK: Car UI Style

struct CarStyle: CarUIStyle {
    var fontStyle: String = "Porsche Next TT"
    var brandFontColor: Color = .black
    var modelFontColor: Color = Color(hex: "#555555")
    var brandFontSize: CGFloat = 0
    var modelFontSize: CGFloat = 0
}
