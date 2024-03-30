//
//  ContentView.swift
//  SwiftUIGridsLazyVGridLazyHGridStaticGrid
//
//  Created by Ramill Ibragimov on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())]) {
            ForEach(MockData.colors, id: \.self) {
                RoundedRectangle(cornerRadius: 10)
                    .fill($0)
                    .frame(height: 100)
            }
        }
    }
}

#Preview {
    ContentView()
}
