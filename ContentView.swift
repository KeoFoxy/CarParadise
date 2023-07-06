//
//  ContentView.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var cars: [Vehicle] = []
    
    var body: some View {
        TabBarView(cars: cars)
            .onAppear(perform: {
                VehicleParser.shared.loadVehiclesFromJSON()
                cars = VehicleParser.shared.getVehicles()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
