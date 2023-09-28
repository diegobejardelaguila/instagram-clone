//
//  ContainerPreviewItemsView.swift
//  instagram clone
//
//  Created by Diego Bejar on 25/09/23.
//

import SwiftUI

struct ContainerPreviewItemsView: View {
    var ProfileList: [Profile] = []
    
    var body: some View {
            SearchBoxView()
            LazyVStack(spacing: UIConstants.gridSpacing) {
                    ForEach(0..<ProfileList.count, id: \.self) { index in
                        if index % 4 == 0 {
                            let endIndex = min(index + 4, ProfileList.count)
                            let chunk = Array(ProfileList[index..<endIndex])
                            
                            Grid(horizontalSpacing: UIConstants.gridSpacing, verticalSpacing: UIConstants.gridSpacing) {
                                GridRow {
                                    PreviewVideoItem(character: chunk[0])
                                    PreviewVideoItem(character: chunk[1])
                                    PreviewVideoItem(character: chunk[2])
                                }
                                
                                GridRow {
                                    Rectangle()
                                        .overlay(
                                            PreviewVideoItem(character: chunk[3], isLarge: true)
                                            
                                        )
                                }
                                .gridCellColumns(3)
                                
                            }
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                            .padding(0)
                            
                            
                        }
                        
                    }
            }
    }
}

                                                                       

#Preview {
    ContainerPreviewItemsView()
}
