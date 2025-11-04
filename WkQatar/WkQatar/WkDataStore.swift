//
//  WkDataStore.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI
import Observation


@Observable
class WkDataStore {
    
    var results: [WKResult] 
    
    init() {
        results = load("WKResultsQatar.json")
    }
    
    func getAllCountries() -> [String] {
        print("getAllCountries")
        let allLocations = results.map { $0.homeTeam }
        let uniqueLocations = Array(Set(allLocations)).sorted()
        return uniqueLocations
    }
    
    func getAllStadions() -> [String] {
        print("getAllStadions")
        let allStadions = results.map { $0.location }
        let uniqueStadions = Array(Set(allStadions)).sorted()
        return uniqueStadions
    }
    
    func getAllMatchesForStadion(selectedStadion: String) -> [WKResult] {
        return results.filter { $0.location == selectedStadion }
    }




}
