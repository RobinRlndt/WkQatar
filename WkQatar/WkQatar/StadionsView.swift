//
//  StadionsView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 21/10/2025.
//

import SwiftUI

struct StadionsView: View {
    @State var dataStore = WkDataStore()
    @Binding var selectedStadion: String?

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

                    MatchesView(selectedStadion: selected) 

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



