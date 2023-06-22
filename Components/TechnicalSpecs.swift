//
//  TechnicalSpecs.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct TechnicalSpecs: View {
    var body: some View {
        Specs
    }
    
    var Specs: some View {
        VStack {
            Spec(systemImgName: "speedometer", specText: "0-100", specValue: "3.2")
            Spec(systemImgName: "cellularbars", specText: "HP", specValue: "466")
            Spec(systemImgName: "fuelpump", specText: "MPG", specValue: "19/24")
            Spec(systemImgName: "engine.combustion", specText: "Engine", specValue: "F6")
        }
    }
}

struct TechnicalSpecs_Previews: PreviewProvider {
    static var previews: some View {
        TechnicalSpecs()
    }
}
