//
//  ExploreVideos.swift
//  instagram clone
//
//  Created by Diego Bejar on 25/09/23.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = SearchViewViewModel()

    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        let colorMode = colorScheme == .dark ? Color.black : Color.white
        List(0..<viewModel.posts.count / 4, id: \.self) { groupIndex in
            let startIndex = groupIndex * 4
            let endIndex = min(startIndex + 4, viewModel.posts.count)
            let profilesInGroup = Array(viewModel.posts[startIndex..<endIndex])
            
            Grid(horizontalSpacing: UIConstants.gridSpacing, verticalSpacing: UIConstants.gridSpacing) {
                GridRow {
                    PreviewVideoItem(character: profilesInGroup[0])
                    PreviewVideoItem(character: profilesInGroup[1])
                    PreviewVideoItem(character: profilesInGroup[2])
                }
                
                GridRow {
                    Rectangle()
                        .overlay(
                            PreviewVideoItem(character: profilesInGroup[3], isLarge: true)
                        )
                }
                .gridCellColumns(3)
                
            }
            .onAppear {
                if groupIndex == viewModel.posts.count / 4 - 1 {
                    viewModel.loadNextPage()
                }
            }
            .listSectionSeparator(.hidden, edges: .bottom)
            .listRowBackground(Color.gray)
            .background(.orange)
            .border(Color.orange)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
            .padding(0)
            
        }.onAppear(
            perform: {
                viewModel.loadNextPage()
            }
        )
        .padding(0)
        .background(colorMode)
        .border(Color.blue)
        .listRowBackground(Color.blue)
        .listStyle(PlainListStyle())
        
    }
    
}

#Preview {
    SearchView()
}
