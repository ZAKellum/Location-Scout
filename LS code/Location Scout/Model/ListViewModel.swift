//
//  ListViewModel.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
//   implemented into the ContentView
//
import Foundation
import SwiftUI


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_List"
    
    init(){
        getItems()
    }
    func getItems() {
        let newItems = [
            // THese are exapmles that will show up in the
            // This should also be a basis when someone opens up the app. It should already have a feed like any social media app.
            ItemModel(newLocationName: "Mike the Tiger's Habitat", text: "Engineering building for LSU students. A great place to study and do business", newPropertyType1: true, propertyPrice: "1200", email: "test@email", ownerName: "Bob"),
            ItemModel(newLocationName: "PFT", text: "Engineering building for LSU students. A great place to study and do business", newPropertyType1: true, propertyPrice: "1200", email: "test@email", ownerName: "Rob"),
            ItemModel(newLocationName: "PFT", text: "Engineering building for LSU students. A great place to study and do business", newPropertyType1: true, propertyPrice: "1200", email: "test@email", ownerName: "Taylor")
        ]
        items.append(contentsOf: newItems)
        
        // This lets the data inputed by the user to be stored.
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}

        self.items = savedItems
    }
    
    func addItem(title: String, descrip: String, price: String, mail: String, owner: String){
        let newItem = ItemModel(newLocationName: title, text: descrip, newPropertyType1: false, propertyPrice: "1200", email: mail, ownerName: owner)
            items.append(newItem)
        //  This takes the data add from the form in the respective fields and stores it in the memory.
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletion()
        }
        // This updates the information from the ItemModel and update it in the ContentView.
    }
    
    func saveItems() {
       if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
        // This saves the items even when you close the app.
    }
}
