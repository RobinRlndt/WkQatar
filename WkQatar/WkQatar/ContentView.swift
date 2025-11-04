//
//  ContentView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI
import Observation

struct ContentView: View {
    var dataStore = WkDataStore()
    
    @State var selectedName: String?
    @State var selectedStadion: String?
    
    var body: some View {
            NavigationStack {
                ListNamesView(dataStore: <#WkDataStore#>, selectedName: selectedName);
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
