//
//  StoryHeaderView.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//

import SwiftUI

struct StoryHeaderView: View {
    var ProfileList: [Profile] = []
     
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(ProfileList, id: \.id) { character in
                    if character.id==1 {
                        StoryHeaderCellView(isBuddyNewStory: true, character: character)
                    } else{
                        StoryHeaderCellView(isBuddyNewStory: false, character: character)
                    }
                }
            }
        }
        
    }
}

#Preview {
    StoryHeaderView()
}
