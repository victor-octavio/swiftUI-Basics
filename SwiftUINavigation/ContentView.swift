//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Victor Alves on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView{
            TabMovies()
                .tabItem {
                    Label("Movies", systemImage: "movieclapper.fill")
                }
            TabActors()
                .tabItem {
                    Label("Actors", systemImage: "person.crop.rectangle.stack")
                }
        }
    }
    
}
#Preview {
    ContentView()
}
