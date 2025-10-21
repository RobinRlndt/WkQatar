//
//  WkQatarApp.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

@main
struct WkQatarApp: App {
    @State var dataStore = WkDataStore() // Use @StateObject for reference model

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataStore) // Pass dataStore to environment
        }
    }
}


