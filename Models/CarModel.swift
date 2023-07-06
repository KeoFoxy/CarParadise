//
//  CarModel.swift
//  CarParadise
//
//  Created by Alexander Sorokin on 23.06.2023.
//

import Foundation

// MARK: Vehicle struct

/// Struct conforms to Hashable protocol
/// otherwise swift won't allow us
/// to loop through the array of vehicles
/// and create favourite cards

struct Vehicle: Hashable {
    
    let make: String
    let model: String
    let year: Int
    let drive: String
    let city_mpg: Int
    let combination_mpg: Int
    let cylinders: Int
    
    let acceleration: Double
    let horsepower: Int
    let engineType: String
    let imageName: String
    let topSpeed: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(make)
        hasher.combine(model)
        hasher.combine(year)
        hasher.combine(drive)
        hasher.combine(city_mpg)
        hasher.combine(combination_mpg)
        hasher.combine(cylinders)
        
        hasher.combine(acceleration)
        hasher.combine(horsepower)
        hasher.combine(engineType)
        hasher.combine(imageName)
        hasher.combine(topSpeed)
    }
    
    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
        return lhs.make == rhs.make &&
            lhs.model == rhs.model &&
            lhs.year == rhs.year &&
            lhs.drive == rhs.drive &&
            lhs.city_mpg == rhs.city_mpg &&
            lhs.combination_mpg == rhs.combination_mpg &&
            lhs.cylinders == rhs.cylinders &&
            lhs.acceleration == rhs.acceleration &&
            lhs.horsepower == rhs.horsepower &&
            lhs.engineType == rhs.engineType &&
            lhs.imageName == rhs.imageName &&
            lhs.topSpeed == rhs.topSpeed
    }
}

    // MARK: Test values
    // FIXME: Remove later

let PorscheCayenneTurboGT: Vehicle = Vehicle(make: "Porsche",
                                             model: "Cayenne Turbo GT",
                                             year: 2024, drive: "AWD",
                                             city_mpg: 24,
                                             combination_mpg: 19,
                                             cylinders: 8,
                                             acceleration: 3.1,
                                             horsepower: 640,
                                             engineType: "V8",
                                             imageName: "porsche_cayenne_turbo_gt",
                                             topSpeed: 296)

let PorschePanameraTurboS: Vehicle = Vehicle(make: "Porsche",
                                             model: "Panamera Turbo S",
                                             year: 2020, drive: "AWD",
                                             city_mpg: 27,
                                             combination_mpg: 17,
                                             cylinders: 8,
                                             acceleration: 3.1,
                                             horsepower: 680,
                                             engineType:"V8",
                                             imageName: "porsche-panamera-turbo-s",
                                             topSpeed: 315)

let PorscheTaycanTurboS: Vehicle = Vehicle(make: "Porsche",
                                           model: "Taycan Turbo S",
                                           year: 2022,
                                           drive: "AWD",
                                           city_mpg: 0,
                                           combination_mpg: 0,
                                           cylinders: 0,
                                           acceleration: 2.9,
                                           horsepower: 640,
                                           engineType: "Electric",
                                           imageName: "porsche-taycan-turbo-s",
                                           topSpeed: 248)

let Porsche911Targa: Vehicle = Vehicle(make: "Porsche",
                                       model: "911 Targa",
                                       year: 2021,
                                       drive: "AWD",
                                       city_mpg: 16,
                                       combination_mpg: 14,
                                       cylinders: 6,
                                       acceleration: 4.0,
                                       horsepower: 380,
                                       engineType: "F6",
                                       imageName: "porsche-911-targa",
                                       topSpeed: 284)


let cars = [PorscheCayenneTurboGT,
            PorschePanameraTurboS,
            Porsche911Targa,
            PorscheTaycanTurboS,
            PorschePanameraTurboS,
            PorscheCayenneTurboGT]
