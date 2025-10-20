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
        NavigationStack {
            VStack {
                List {
                    ForEach(dataStore.getAllLocations(), id: \.self) { name in
                        Button(action: {
                            selectedName = name
                        }) {
                            HStack {
                                Text(name)
                                if selectedName == name {
                                    Spacer()
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.blue)
                                }
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
            .navigationTitle("Select a Location")
        }
    }
}



#Preview {
    ListNamesView(selectedName: .constant(nil))
}

