//
//  Location_ScoutApp.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//  This is the main method that call on the MainView.
//  The MainView includes the MapView, ContentView, and ProfileView.
//

import SwiftUI

@main
struct Location_ScoutApp: App {
    
   @StateObject var listViewModels: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(listViewModels)
            //  The MainView includes the ContentView which needs to call upon information
            //  created by the user to upload and updated through addALandmark.
        }
    }
}
