//
//  PreviewVideoItem.swift
//  instagram clone
//
//  Created by Diego Bejar on 25/09/23.
//
import SwiftUI
import URLImage

struct PreviewVideoItem: View {
    var character: Profile? = nil
    var coordinateX: Int = 1
    var coordinateY: Int = 1
    var borderColor: Color = .red
    var borderWidth: CGFloat = 1.0
    var showTopBorder: Bool = true
    var showBottomBorder: Bool = true
    var showLeadingBorder: Bool = true
    var showTrailingBorder: Bool = true
    var isLarge: Bool = false

    var body: some View {
        if let character = character, let imageURL = URL(string: character.image) {
            GeometryReader { geometry in
                            URLImage(imageURL) { proxy in
                                proxy
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geometry.size.width, height: geometry.size.height)
                                   
                                    .clipped()
                            }
                        }
        } else {
            EmptyView()
        }
    }
}


#Preview {
    PreviewVideoItem()
}
