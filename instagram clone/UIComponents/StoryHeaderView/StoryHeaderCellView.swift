//
//  StoryHeaderCellView.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//
import SwiftUI
import URLImage

struct StoryHeaderCellView: View {
    var isBuddyNewStory: Bool =  false
    var character: Profile? = nil

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        let circleColor = colorScheme == .dark ? Color.black : Color.white
        let coordinateX: Int = 52
        let coordinateY: Int = 52

        VStack {
            ZStack {
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(Color.clear)
                    .overlay(
                        Group {
                            if !isBuddyNewStory {
                                Circle()
                                    .strokeBorder(LinearGradient(gradient: Gradient(colors: [.yellow, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                            } else {
                                EmptyView()
                            }
                        }
                    )

                if let character = character, let imageURL = URL(string: character.image) {
                    URLImage(imageURL) { proxy in
                        proxy
                            .resizable()
                            .frame(width: 65, height: 65)
                            .clipShape(Circle())
                            .overlay(
                                Group {
                                    if isBuddyNewStory {
                                        ZStack {
                                            Circle()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(circleColor)
                                                .position(x: CGFloat(coordinateX), y: CGFloat(coordinateY))

                                            Image(systemName: "plus.circle.fill")
                                                .position(x: CGFloat(coordinateX), y: CGFloat(coordinateY))
                                                .foregroundColor(.blue)
                                        }
                                    } else {
                                        EmptyView()
                                    }
                                }
                            )
                    }


                } else {
                    EmptyView()
                }
            }

            Text(character?.name ?? "Nombre Desconocido")
                .font(.system(size: 13))
        }
    }
}

#Preview {
    StoryHeaderCellView()
}
