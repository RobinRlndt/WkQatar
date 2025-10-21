//
//  ListNamesView.swift
//  WkQatar
//
//  Created by Robin Roelandt on 20/10/2025.
//

import SwiftUI

struct ListNamesView: View {
    @Binding var selectedName: String?
    @State var dataStore = WkDataStore()

    var body: some View {
        VStack {
            Text("Select a Country")
                .fontDesign(.rounded)
                .fontWeight(.bold)
                .foregroundStyle(Color.red)
                .padding(.bottom)
            
            List(dataStore.getAllCountries(), id: \.self) { name in
                Button(action: {
                    selectedName = name
                }) {
                    HStack {
                        Text(name)
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

#Preview {
    ListNamesView(selectedName: .constant(nil))
}

