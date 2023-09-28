//
//  TabBar.swift
//  instagram clone
//
//  Created by Diego Bejar on 20/09/23.
//

import SwiftUI

struct TabBar: View {
    @Environment(\.colorScheme) var colorScheme
    
    var colorMode: Color {
        return colorScheme == .dark ? Color.black : Color.white
    }

    var body: some View {
        TabView {
            Group {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Inicio")
                    }
        
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Inicio")
                    }
                    .listRowSeparator(/*@START_MENU_TOKEN@*/.visible/*@END_MENU_TOKEN@*/)
        
                Text("Pestaña 3")
                    .tabItem {
                        Image(systemName: "plus.square")
                        Text("Inicio")
                    }
        
                Text("Pestaña 4")
                    .tabItem {
                        Image(systemName: "film")
                        Text("Inicio")
                    }

                Text("Pestaña 5")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Perfil")
                    }
            }
            
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(colorMode, for: .tabBar)

        }
    }
}

#Preview {
    TabBar()
}
