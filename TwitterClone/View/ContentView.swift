//
//  ContentView.swift
//  TwitterClone
//
//  Created by bastien giat on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Feed")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                Text("Message")
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Messages")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
