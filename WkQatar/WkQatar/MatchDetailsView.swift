//
//  MatchDetailsView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct MatchDetailsView: View {
    let match: WKResult

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("\(match.homeTeam) vs \(match.awayTeam)")
                .font(.largeTitle)
                .bold()
            Text("Date: \(match.dateUTC)")
                .font(.subheadline)
            Text("Location: \(match.location)")
            Text("Group: \(match.group ?? "N/A")")
            Text("Score: \(match.homeTeamScore ?? 0) - \(match.awayTeamScore ?? 0)")
            Spacer()
        }
        .padding()
        .navigationTitle("Match Details")
    }
}



