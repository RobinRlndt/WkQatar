//
//  StadionsView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 21/10/2025.
//

import SwiftUI

struct StadionsView: View {
    @Bindable var dataStore: WkDataStore
    @Binding var selectedStadion: String?
    var selectedCountry: String?

    var body: some View {
        NavigationSplitView {
            List(dataStore.getAllStadions(), id: \.self, selection: $selectedStadion) { name in
                Text(name)
            }
            .navigationTitle("Stadiums")
        } detail: {
            if let selected = selectedStadion {
                VStack(alignment: .leading) {
                    Text("Matches in \(selected)")
                        .font(.title)
                        .padding(.bottom)

                    MatchesView(selectedStadion: selected, selectedCountry: selectedCountry, dataStore: dataStore)

                    Spacer()
                }
                .padding()
                .navigationTitle(selected)
            } else {
                Text("Please select a stadium")
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    StadionsView(dataStore: WkDataStore(), selectedStadion: .constant(nil), selectedCountry: nil)
}






