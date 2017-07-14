//
//  Planet.swift
//  SolarSystem
//
//  Created by Roderic Campbell on 7/12/17.
//  Copyright © 2017 Roderic Campbell. All rights reserved.
//

import Foundation
import UIKit
extension Planet: Hashable {
    var hashValue: Int {
        return name.hash
    }
}

struct Planet: Equatable {
    static func ==(lhs: Planet, rhs: Planet) -> Bool {
        return lhs.name == rhs.name &&
            lhs.orbitalRadius == rhs.orbitalRadius &&
            lhs.displayOrbitalRadius == rhs.displayOrbitalRadius &&
            lhs.radius == rhs.radius &&
            lhs.rotationDuration == rhs.rotationDuration &&
            lhs.axialTilt == rhs.axialTilt &&
            lhs.orbitPeriod == rhs.orbitPeriod
    }
    
    let name: String
    
    // Distance from the sun in millions of km
    // Source: http://www.enchantedlearning.com/subjects/astronomy/planets/
    let orbitalRadius: CGFloat
    
    var displayOrbitalRadius: CGFloat {
        get {
            return orbitalRadius / 100
        }
    }
    
    // In KM: eg. Earth 6371.0
    // Source: https://en.wikipedia.org/wiki/List_of_Solar_System_objects_by_size
    let radius: Float
    
    // In HOURS 🕥: eg. Earth 23.93, Mercury 1407.6
    // Source: https://en.m.wikipedia.org/wiki/Axial_tilt#Solar_System_bodies
    let rotationDuration: Double
    
    // Tilt on the poles in degrees: eg. Earth 23.44
    // Source: https://en.m.wikipedia.org/wiki/Axial_tilt#Solar_System_bodies
    let axialTilt: Float
    
    // Duration to circle the sun in earth YEARS 📅
    // Source: https://en.wikipedia.org/wiki/Orbital_period#Examples_of_sidereal_and_synodic_periods
    let orbitPeriod: Double
    
    // TODO the sun is now Jupiter sized, need to look this up
    static let sun = Planet(name: "Sun", orbitalRadius: 0, radius: 695700, rotationDuration: 1000, axialTilt: 1, orbitPeriod: 1)
    static let mercury = Planet(name: "Mercury", orbitalRadius: 57.9, radius: 2439.7, rotationDuration: 1407.6, axialTilt: 0.03, orbitPeriod: 0.240846)
    static let venus = Planet(name: "Venus", orbitalRadius: 108.2, radius: 6051.8, rotationDuration: 5832.6, axialTilt: 2.64, orbitPeriod: 0.615)
    static let earth = Planet(name: "Earth", orbitalRadius: 149.6, radius: 6371, rotationDuration: 23.93, axialTilt: 23.44, orbitPeriod: 1)
    static let mars = Planet(name: "Mars", orbitalRadius: 227.9, radius: 3389.5, rotationDuration: 24.62, axialTilt: 25.19, orbitPeriod: 1.881)
    static let jupiter = Planet(name: "Jupiter", orbitalRadius: 778.3, radius: 69911, rotationDuration: 9.93, axialTilt: 3.13, orbitPeriod: 11.86)
    static let saturn = Planet(name: "Saturn", orbitalRadius: 1427, radius: 58232, rotationDuration: 10.66, axialTilt: 26.73, orbitPeriod: 29.46)
    static let uranus = Planet(name: "Uranus", orbitalRadius: 2871, radius: 25362, rotationDuration: 17.24, axialTilt: 82.23, orbitPeriod: 84.01)
    static let neptune = Planet(name: "Neptune", orbitalRadius: 4497, radius: 24622, rotationDuration: 16.11, axialTilt: 28.32, orbitPeriod: 164.8)
    static let pluto = Planet(name: "Pluto", orbitalRadius: 5913, radius: 1186, rotationDuration: 153.29, axialTilt: 57.47, orbitPeriod: 248.1)
}