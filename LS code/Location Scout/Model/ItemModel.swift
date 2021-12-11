//
//  ItemModel.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
//  This where information will be stored and identified.

import Foundation
import SwiftUI

struct ItemModel: Identifiable, Codable {
    
    let id: String
    //let newImageName: Image 
    let newLocationName: String
    let text: String
    let newPropertyType1: Bool
    let propertyPrice: String
    let email: String
    let ownerName: String
    
    init (id: String = UUID().uuidString, newLocationName: String, text: String, newPropertyType1: Bool, propertyPrice: String, email: String, ownerName: String){
        self.id = id
        self.newLocationName = newLocationName
        self.text = text
        self.newPropertyType1 = newPropertyType1
        self.propertyPrice = propertyPrice
        self.email = email
        self.ownerName = ownerName
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, newLocationName: newLocationName, text: text, newPropertyType1: !newPropertyType1, propertyPrice: propertyPrice, email: email, ownerName: ownerName)
    }
}

