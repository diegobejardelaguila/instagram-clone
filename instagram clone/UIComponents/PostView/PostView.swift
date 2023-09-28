//
//  PostView.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//

import SwiftUI

struct PostView: View {
    var posts: [Profile] = []
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image("profile1")
                        .resizable()
                        .frame(width: 40, height: 30)
                        .clipShape(Circle())
                    
                    Spacer().frame(width: 3)
                    
                    VStack(alignment: .leading) {
                        Text("streamyard").bold().font(.system(size: 15))
                        Text("Sponsored").font(.system(size: 13))
                    }
                }
                Spacer()

                Text("...")
            }
            .padding()
            
            Image("postinstagram")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
            
            PostActionView()

        }
    }
}

#Preview {
    PostView()
}
