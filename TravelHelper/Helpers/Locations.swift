//
//  Locations.swift
//  TravelHelper
//
//  Created by guntars.grants on 22/02/2021.
//
//  Importing JSON for multiple Locations

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[Int.random(in: 0..<12)]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
