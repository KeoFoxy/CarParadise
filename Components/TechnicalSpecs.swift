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
    ///   - cylinders: Future useage for engine type
    
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
    ///   - imageName: Car image, that is added to assets
    ///   - topSpeed: Car's top speed, according manufacturer
    /// Maybe I will add something else in the future
    
    /// FIXME: At the moment, for the sake of clarity of the interface construction, stubs are used
    /// TODO: Add converter from MPG to L/100 km
    
    /// Struture receives data from an object of type Vehicle
    /// that contains all information about current car
    /// It must be passed when you select your new favourite car
    
    // MARK: Parameters
    
    let Acceleration: Double
    let TopSpeed: Int
    let HP: Int
    let MPG: String
    let Engine: String
    
    var body: some View {
        Specs
    }
    
    // MARK: Specs
    
    var Specs: some View {
        VStack(spacing: 1) {
//            Divider()
//                .frame(width: 420)
            Spec(specText: "0-100", specValue: String(Acceleration))
            Spec(specText: "Top speed", specValue: String(TopSpeed))
            Spec(specText: "Max Power", specValue: String(HP))
            Spec(specText: "MPG", specValue: MPG)
            Spec(specText: "Engine", specValue: Engine)
//            Divider()
//                .frame(width: 420)
        }
        .padding(10)
    }
}
// MARK: Preview
struct TechnicalSpecs_Previews: PreviewProvider {
    static var previews: some View {
        TechnicalSpecs(Acceleration: 3.1, TopSpeed: 296, HP: 660, MPG: "19/24", Engine: "V8")
    }
}
