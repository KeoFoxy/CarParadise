//
//  CarModel.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 23.06.2023.
//

import Foundation

    // MARK: Engine Type
//enum EngineType {
//    case common4
//    case V6
//    case V8
//    case V12
//    case F6
//    case W12
//    case W16
//}

    // MARK: API Parameters
struct VehicleAPIParameters: Codable {
    let make: String
    let model: String
    let year: Int
    let drive: String
    let city_mpg: Int
    let combination_mpg: Int
    let cylinders: Int
}
    // MARK: JSON Parameters
struct VehicleJSONParameters {
    let acceleration: Double
    let horsepower: Int
    let engineType: String
    let imageName: String
    let topSpeed: Int
}

    // MARK: Hashable struct
struct Vehicle: Hashable {
    let api: VehicleAPIParameters
    let json: VehicleJSONParameters
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(api.make)
        hasher.combine(api.model)
        hasher.combine(api.year)
        hasher.combine(api.drive)
        hasher.combine(api.city_mpg)
        hasher.combine(api.combination_mpg)
        hasher.combine(api.cylinders)
        
        hasher.combine(json.acceleration)
        hasher.combine(json.horsepower)
        hasher.combine(json.engineType)
        hasher.combine(json.imageName)
        hasher.combine(json.topSpeed)
    }
    
    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
        return lhs.api.make == rhs.api.make &&
            lhs.api.model == rhs.api.model &&
            lhs.api.year == rhs.api.year &&
            lhs.api.drive == rhs.api.drive &&
            lhs.api.city_mpg == rhs.api.city_mpg &&
            lhs.api.combination_mpg == rhs.api.combination_mpg &&
            lhs.api.cylinders == rhs.api.cylinders &&
            lhs.json.acceleration == rhs.json.acceleration &&
            lhs.json.horsepower == rhs.json.horsepower &&
            lhs.json.engineType == rhs.json.engineType &&
            lhs.json.imageName == rhs.json.imageName &&
            lhs.json.topSpeed == rhs.json.topSpeed
    }
}

    // MARK: Test values
    // FIXME: Remove later

let PorscheCayenneTurboGT: Vehicle = Vehicle(
                            api:
                        VehicleAPIParameters( make: "Porsche", model: "Cayenne Turbo GT", year: 2024, drive: "AWD",
                            city_mpg: 24, combination_mpg: 19, cylinders: 8),
                            json:
                        VehicleJSONParameters( acceleration: 3.1, horsepower: 640, engineType: "V8", imageName: "porsche_cayenne_turbo_gt", topSpeed: 296))

let PorschePanameraTurboS: Vehicle = Vehicle(
                            api:
                        VehicleAPIParameters( make: "Porsche", model: "Panamera Turbo S", year: 2020, drive: "AWD",
                            city_mpg: 27, combination_mpg: 17, cylinders: 8),
                            json:
                        VehicleJSONParameters( acceleration: 3.1, horsepower: 680, engineType: "V8", imageName: "porsche-panamera-turbo-s", topSpeed: 315))

let PorscheTaycanTurboS: Vehicle = Vehicle(
                            api:
                        VehicleAPIParameters( make: "Porsche", model: "Taycan Turbo S", year: 2022, drive: "AWD",
                            city_mpg: 0, combination_mpg: 0, cylinders: 0),
                            json:
                        VehicleJSONParameters( acceleration: 2.9, horsepower: 640, engineType: "Electric", imageName: "porsche-taycan-turbo-s", topSpeed: 248))

let Porsche911Targa: Vehicle = Vehicle(
                            api:
                        VehicleAPIParameters( make: "Porsche", model: "911 Targa", year: 2021, drive: "AWD",
                            city_mpg: 16, combination_mpg: 14, cylinders: 6),
                            json:
                        VehicleJSONParameters( acceleration: 4.0, horsepower: 380, engineType: "F6", imageName: "porsche-911-targa", topSpeed: 284))


let cars = [PorscheCayenneTurboGT,
            PorschePanameraTurboS,
            Porsche911Targa,
            PorscheTaycanTurboS,
            PorschePanameraTurboS,
            PorscheCayenneTurboGT]
