//
//  MatchesView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct MatchesView: View {
    var selectedStadion: String
    var selectedCountry: String?
    @Bindable var dataStore: WkDataStore

    @State private var selectedMatch: WKResult?

    var body: some View {
        NavigationSplitView {
            List(selection: $selectedMatch) {
                let matches = dataStore.getAllMatchesForStadion(selectedStadion: selectedStadion)

                ForEach(matches) { match in
                    HStack(spacing: 12) {
                        // Accent square if this match involves selectedCountry
                        if match.homeTeam == selectedCountry || match.awayTeam == selectedCountry {
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color.red)
                                .frame(width: 8, height: 8)
                        } else {
                            // Invisible spacer to align rows
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: 8, height: 8)
                        }

                        // Home team block
                        VStack(alignment: .leading) {
                            Text(match.homeTeam)
                                .font(.headline)
                            Text("Score: \(match.homeTeamScore ?? 0)")
                        }

                        Spacer()

                        // "vs" label as standalone text
                        Text("vs")
                            .font(.subheadline)
                            .foregroundColor(.secondary)

                        Spacer()

                        // Away team block
                        VStack(alignment: .leading) {
                            Text(match.awayTeam)
                                .font(.headline)
                            Text("Score: \(match.awayTeamScore ?? 0)")
                        }
                    }
                    .padding(.vertical, 6)
                    .contentShape(Rectangle()) // Makes whole row tappable
                    .foregroundColor(
                        (match.homeTeam == selectedCountry || match.awayTeam == selectedCountry) ? .red : .primary
                    )
                    .tag(match)
                }
            }
            .navigationTitle("Matches")
        } detail: {
            if let match = selectedMatch {
                MatchDetailsView(match: match)
            } else {
                Text("Please select a match")
                    .foregroundColor(.secondary)
            }
        }
    }
}






















