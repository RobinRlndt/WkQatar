//
//  WkQatarApp.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI
import Observation

@main
struct WkQatarApp: App {
    @State private var dataStore = WkDataStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.dataStore, dataStore)
        }
    }
}




