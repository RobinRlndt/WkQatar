//
//  EnvironmentKeys.swift
//  WkQatar
//
//  Created by Robin Roelandt on 04/11/2025.
//


import SwiftUI

struct DataStoreKey: EnvironmentKey {
    static let defaultValue = WkDataStore()
}

extension EnvironmentValues {
    var dataStore: WkDataStore {
        get { self[DataStoreKey.self] }
        set { self[DataStoreKey.self] = newValue }
    }
}

