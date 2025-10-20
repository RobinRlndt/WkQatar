//
//  WkDataStore.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import Foundation

@Observable
class WkDataStore {
    
    var results: [WKResult] //RESULTAAT VAN LOAD FUNCTIE
    
    init() {
        results = load("WKResultsQatar.json")
    }
    
    func getAllLocations() -> [String] {
        print("getAllLocations")
        let allLocations = results.map { $0.location }
        let uniqueLocations = Array(Set(allLocations)).sorted()
        return uniqueLocations
    }

}
