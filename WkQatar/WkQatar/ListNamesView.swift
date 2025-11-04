//
//  ListNamesView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct ListNamesView: View {
    @Bindable var dataStore: WkDataStore
    @Binding var selectedName: String?

    var body: some View {
        VStack {
            Text("Select a Country")
                .fontDesign(.rounded)
                .fontWeight(.bold)
                .foregroundStyle(Color.red)
                .padding(.bottom)

            List(dataStore.getAllCountries(), id: \.self) { name in
                Button {
                    selectedName = name
                } label: {
                    HStack {
                        Text(name)
                            .foregroundColor(selectedName == name ? .red : .primary)
                        Spacer()
                        if selectedName == name {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }

            if let selected = selectedName {
                Divider()
                Text("Selected: \(selected)")
                    .padding()
            }
        }
        .navigationTitle("SELECT A COUNTRY")
    }
}








