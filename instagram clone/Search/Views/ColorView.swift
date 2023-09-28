//
//  ColorView.swift
//  instagram clone
//
//  Created by Diego Bejar on 25/09/23.
//
//
//  ColorView.swift
//  Grid_Example
//
//  Created by Denis Obukhov on 28.05.2020.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

struct ColorView: View {
        
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(
                LinearGradient(gradient:
                    Gradient(colors:
                                [Color(.black),
                                 Color(.green)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
        )
        
    }
}
