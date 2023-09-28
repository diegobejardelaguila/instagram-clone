//
//  ViewsThree.swift
//  instagram clone
//
//  Created by Diego Bejar on 25/09/23.
//

import SwiftUI

struct ViewsThree: View {
    var body: some View {
           VStack {
               Grid {
                   GridRow {
                       Image(systemName: "figure.soccer")
                       Text("Soccer")
                   }
                   GridRow {
                       Image(systemName: "figure.basketball")
                       Text("Basketball")
                   }
               }
               VStack {
                   HStack {
                       Image(systemName: "figure.soccer")
                       Text("Soccer")
                   }
                   HStack {
                       Image(systemName: "figure.basketball")
                       Text("Basketball")
                   }
               }
           }
           .font(.largeTitle)
       }
}

#Preview {
    ViewsThree()
}
