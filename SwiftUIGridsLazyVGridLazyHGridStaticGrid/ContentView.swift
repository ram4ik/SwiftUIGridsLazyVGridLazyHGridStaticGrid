//
//  ContentView.swift
//  SwiftUIGridsLazyVGridLazyHGridStaticGrid
//
//  Created by Ramill Ibragimov on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var colorHex = ""
    var columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(MockData.colors, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(color)
                            .frame(height: 100)
                            .onTapGesture {
                                colorHex = "\(color)"
                            }
                    }
                } header: {
                    Text("Home \(colorHex)")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Section {
                    ForEach(MockData.colors, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(color)
                            .frame(height: 100)
                            .onTapGesture {
                                colorHex = "\(color)"
                            }
                    }
                } header: {
                    Text("Favorites \(colorHex)")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
