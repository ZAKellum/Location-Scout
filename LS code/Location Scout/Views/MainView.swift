//
//  MainView.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        // The TabView hosts the thre main views at the moment.
        // MapView Includes a map that has uses current location.
        // ContentView is supposed to show a feed of location a user can browse.
        // It is also used to create a post.
        // ProfileView will eventually show basic information and is place where the user can edit and change their information.
        
        TabView {
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map.circle")
                }
            ContentView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}
