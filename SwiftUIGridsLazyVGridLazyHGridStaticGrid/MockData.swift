//
//  MockData.swift
//  SwiftUIGridsLazyVGridLazyHGridStaticGrid
//
//  Created by Ramill Ibragimov on 3/30/24.
//

import SwiftUI

struct MockData {
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 { array.append(Color.random) }
        return array
    }
}
