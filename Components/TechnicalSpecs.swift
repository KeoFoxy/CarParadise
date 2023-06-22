//
//  TechnicalSpecs.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 22.06.2023.
//

import SwiftUI

struct TechnicalSpecs: View {
    
    //MARK: View Description
    
    /// This component generates information about the car
    /// from several small Spec components.
    /// The structure accepts an object of the
    /// car model and then forms technical specs from its data
    
    /// Car model looks like this:
    /// - Parameters:
    ///   - make: Vehicle manufacturer. String type
    ///   - model: Vehicle model. String type
    ///   - year: Vehicle year. Int type. Will be converted to String
    ///   - combination_mpg: Vehicle combined Miles Per Gallon
    ///   - city_mpg: Vehicle city Miles Per Gallon
    
    /// All these parameters come from the API, but the rest are taken from manual
    /// JSON, which is parsed separately, since I have not found a free API that
    /// provides such data. In view of the impossibility of entering absolutely
    /// all data for each car, it contains only technical notes of the most
    /// popular cars
    
    /// Data from manual JSON
    /// - Parameters:
    ///   - acceleration: Vehicle 0 to 100 km/h acceleration
    ///   - hp: Vehicle power in horsepower.
    ///   - engine: Vehicle engine type. V8, W12, V6, F6 and etc
    /// Maybe I will add something else in the future
    
    /// FIXME: At the moment, for the sake of clarity of the interface construction, stubs are used
    /// TODO: Add converter from MPG to L/100 km
    
//    var vehicle: Vehicle
    
    var body: some View {
        Specs
    }
    
    // MARK: Specs
    
    var Specs: some View {
        VStack(spacing: 1) {
            Spec(systemImgName: "speedometer", specText: "0-100", specValue: "3.1")
            Spec(systemImgName: "cellularbars", specText: "HP", specValue: "660")
            Spec(systemImgName: "fuelpump", specText: "MPG", specValue: "19/24")
            Spec(systemImgName: "engine.combustion", specText: "Engine", specValue: "V8")
        }
    }
}
// MARK: Preview
struct TechnicalSpecs_Previews: PreviewProvider {
    static var previews: some View {
        TechnicalSpecs()
    }
}
