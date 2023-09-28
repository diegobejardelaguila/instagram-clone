//
//  PostActionView.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//

import SwiftUI

struct PostActionView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            HStack() {
                HStack {
                    HStack {
                        Image(systemName: "heart").font(.system(size: 28))
                        Spacer().frame(width: 3)
                        Text("768")
                    }
                    Spacer().frame(width: 12)
                    HStack {
                        Image(systemName: "message").font(.system(size: 28))
                        Spacer().frame(width: 3)
                        Text("5")
                    }
                    Spacer().frame(width: 12)
                    Image(systemName: "paperplane").font(.system(size: 28))
                }
                Spacer()
                Image(systemName: "bookmark").font(.system(size: 28))
                
            }
            HStack {
                Text("wasted").bold()
                Text("Crazy...")
                Text("more").foregroundColor(.gray)
            }
            Text("View all comments").foregroundColor(.gray)
            Text("17 hours ago").foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    PostActionView()
}
