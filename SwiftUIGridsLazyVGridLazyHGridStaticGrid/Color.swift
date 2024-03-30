//
//  Color.swift
//  SwiftUIGridsLazyVGridLazyHGridStaticGrid
//
//  Created by Ramill Ibragimov on 3/30/24.
//

import SwiftUI

extension Color {
    static var random: Color {
        return Color(red: Double.random(in: 0...1),
                     green: Double.random(in: 0...1),
                     blue: Double.random(in: 0...1))
    }
}
