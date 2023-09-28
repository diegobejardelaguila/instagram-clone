//
//  HomeView.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewViewModel()
    @ObservedObject var postViewModel = PostViewViewModel()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HeaderView()
                StoryHeaderView(ProfileList: viewModel.posts)
                PostView()
                PostView()
                PostView()
                PostView()
                PostView()
                PostView()
                PostView()
                Spacer()
            }
        }
        .onAppear {
            viewModel.loadData()
            postViewModel.loadData()
        }
    }
}

#Preview {
    HomeView()
}
