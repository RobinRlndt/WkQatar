//
//  WkQatarApp.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

@main
struct WkQatarApp: App {
    @State var dataStore = WkDataStore()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(dataStore)
        }
    }
}


