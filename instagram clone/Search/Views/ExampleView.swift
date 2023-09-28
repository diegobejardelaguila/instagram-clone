//
//  ExampleView.swift
//  instagram clone
//
//  Created by Diego Bejar on 27/09/23.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        List {
            ForEach(1...10, id: \.self) { index in
                Text("Elemento \(index)")
            }
            .listRowBackground(Color.gray)
            .listRowSeparator(.hidden)

        }
        .listStyle(.plain)
        
    }
}

#Preview {
    ExampleView()
}
