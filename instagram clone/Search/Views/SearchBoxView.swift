//
//  SearchBoxView.swift
//  instagram clone
//
//  Created by Diego Bejar on 26/09/23.
//

import SwiftUI

struct SearchBoxView: View {
    @State private var textState = ""
    private var placeHolder = "Search"
    private var corner = 13.0

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().frame(width: 350, height: 50)
                .cornerRadius(corner)
                .foregroundColor(.gray)
            
            TextField("Search", text: $textState)
                .background(.gray)
                .padding(.leading, 30)
                .frame(width: 290, height: 30)
                .offset(x: 10, y: 0)
            
            Image(systemName: "magnifyingglass")
                .frame(width: 30, height: 30)
                .background(Color.clear)
                .offset(x: 10, y: 0)
                    
        }
        .background(Theme.primary)
        .cornerRadius(corner)
    }
}

#Preview {
    SearchBoxView()
}
