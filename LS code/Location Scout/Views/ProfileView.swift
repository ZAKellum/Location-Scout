//
//  ProfileView.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        // This only includes a list which will soon be a button to change and edit things.
        
        NavigationView{
            VStack{
                List {
                    Text("Edit profile")
                        .listRowBackground(Color.themeTertiary)
                    Text("Settings")
                        .listRowBackground(Color.themeTertiary)
                    Text("Payment")
                        .listRowBackground(Color.themeTertiary)
                    Text("Licensing and Info")
                        .listRowBackground(Color.themeTertiary)
                }
                .navigationTitle("Profile")
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
