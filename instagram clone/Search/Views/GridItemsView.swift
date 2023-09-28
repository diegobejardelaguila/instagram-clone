//
//  GridItemsView.swift
//  instagram clone
// 
//  Created by Diego Bejar on 25/09/23.
//

import SwiftUI

struct GridItemsView: View {
    var isVertical: Bool = true

    var body: some View {
        if isVertical {
            VStack(spacing: 2) {
                PreviewVideoItem(coordinateX: Int(UIScreen.main.bounds.width / 3), coordinateY: Int(UIScreen.main.bounds.width / 3), borderColor: .red, borderWidth: 2.0)
                PreviewVideoItem(coordinateX: Int(UIScreen.main.bounds.width / 3), coordinateY: Int(UIScreen.main.bounds.width / 3), borderColor: .red, borderWidth: 2.0)
            }
            .background(.black)
        } else {
            let newHeight = Int(UIScreen.main.bounds.width * 2 / 3) + 2
            PreviewVideoItem(coordinateX: Int(UIScreen.main.bounds.width / 3), coordinateY: newHeight, borderColor: .red, borderWidth: 2.0)
        }
    }
}

#Preview {
    GridItemsView()
}
