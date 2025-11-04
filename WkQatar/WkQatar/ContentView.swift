//
//  ContentView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.dataStore) var dataStore: WkDataStore

    @State private var selectedName: String? = nil
    @State private var selectedStadion: String? = nil

    var body: some View {
        NavigationStack {
            ListNamesView(dataStore: dataStore, selectedName: $selectedName)
            NavigationLink("Next") {
                StadionsView(dataStore: dataStore, selectedStadion: $selectedStadion, selectedCountry: selectedName)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}




