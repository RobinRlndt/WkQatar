//
//  MatchesView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct MatchesView: View {
    var selectedStadion: String
    @State var dataStore = WkDataStore()

    var body: some View {
        let matches = dataStore.getAllMatchesForStadion(selectedStadion: selectedStadion)

        if matches.isEmpty {
            Text("No matches found")
                .italic()
        } else {
            List(matches) { match in
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(match.homeTeam)
                                .font(.headline)
                            Text("Score: \(match.homeTeamScore)")
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text(match.awayTeam)
                                .font(.headline)
                            Text("Score: \(match.awayTeamScore)")
                        }
                    }
                    Text("Date: \(match.date)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 6)
            }
        }
    }
}









