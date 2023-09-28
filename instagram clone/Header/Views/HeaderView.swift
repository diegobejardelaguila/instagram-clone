//
//  HeaderView.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 55)
                    .scaledToFit()
                
                
                Spacer()
                HStack {
                    Image(systemName: "heart")
                        .font(.system(size: 28))
                    Spacer().frame(width: 20)
                    Image(systemName: "message")
                        .font(.system(size: 28))

                }
                
                
            }
            .frame(height: 10)
            .padding()
            
            Rectangle()
                .frame(height: 1) // Altura de la línea
                .foregroundColor(.gray) // Color de la línea
            
            
        }
        
        
    }
}

#Preview {
    HeaderView()
}
