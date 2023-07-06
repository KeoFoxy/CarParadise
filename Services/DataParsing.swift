//
//  DataParsing.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 06.07.2023.
//

import Foundation

struct VehicleParser {
    static var shared = VehicleParser()
    
    private var vehicles: [Vehicle] = []
    
    private init() {}
    
    mutating func loadVehiclesFromJSON() {
        guard let fileURL = Bundle.main.url(forResource: "vehicles", withExtension: "json") else {
            print("Unable to locate JSON file.")
            return
        }
        print("Successfully")
        
        do {
            let jsonData = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            self.vehicles = try decoder.decode([Vehicle].self, from: jsonData)
            
        } catch {
            print("Error parsing JSON: \(error.localizedDescription)")
        }
    }
    
    func getVehicles() -> [Vehicle] {
        print(vehicles)
        return vehicles
    }
}
