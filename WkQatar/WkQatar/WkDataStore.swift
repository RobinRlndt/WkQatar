//
//  WkDataStore.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//


import Observation

@Observable
class WkDataStore {
    var selectedName: String?
    var selectedStadion: String?
    
    var results: [WKResult]
    
    init() {
        results = load("WKResultsQatar.json")
    }
    
    func getAllCountries() -> [String] {
        let allTeams = results.flatMap { [$0.homeTeam, $0.awayTeam] }
        let uniqueTeams = Array(Set(allTeams)).sorted()
        print("getAllCountries called, total unique: \(uniqueTeams.count)")
        return uniqueTeams
    }
    
    func getAllStadions() -> [String] {
        let allStadions = results.map { $0.location }
        let uniqueStadions = Array(Set(allStadions)).sorted()
        print("getAllStadions called, total unique: \(uniqueStadions.count)")
        return uniqueStadions
    }
    
    func getAllMatchesForStadion(selectedStadion: String) -> [WKResult] {
        let filtered = results.filter { $0.location == selectedStadion }
        print("getAllMatchesForStadion called for \(selectedStadion), count: \(filtered.count)")
        return filtered
    }
}

