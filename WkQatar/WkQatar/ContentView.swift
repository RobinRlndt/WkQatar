//
//  ContentView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(WkDataStore.self) var dataStore
    @State var selectedName: String?
    @State var selectedStadion: String?
    
    var body: some View {
            NavigationStack {
                ListNamesView(selectedName: $selectedName);
                NavigationLink("Next") {
                    StadionsView(selectedStadion: $selectedStadion)
                }
            }
        .padding()
    }
}

#Preview {
    ContentView()
}
