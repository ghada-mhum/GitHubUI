//
//  ContentView.swift
//  GitHub
//
//  Created by ghada Mohammad on 09/04/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
            InBoxView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                    
                }
            ExeploreView()
                .tabItem {
                    Image(systemName: "sparkle.magnifyingglass")
                    Text("Explore")
                    
                }
            HomeView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                    
                }
            
        }
    }
        
    }

#Preview {
    ContentView()
}
