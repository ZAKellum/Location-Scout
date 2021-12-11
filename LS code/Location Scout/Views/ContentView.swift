//
//  ContentView.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
// This is the most important view. This is wher the user should spend most of their time, so they can explore. The user can search and add a post in this view.
//  Eventually this view should have a filter setting and a search bar.
//
//  There is a class that needs to be implemented as a button within the list so the user can see a more detailed view.

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    var body: some View {
        NavigationView{
            List {
                ForEach(listViewModel.items) { item in
                    ListRowView(item: item)
                        .onTapGesture {
                            listViewModel.updateItem(item: item)
                        }
                }
            }
            .navigationTitle("Explore")
            .navigationBarItems(
                trailing:
                    NavigationLink("Add", destination: addALandmarkForm()))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        .environmentObject(ListViewModel())
    }
}
