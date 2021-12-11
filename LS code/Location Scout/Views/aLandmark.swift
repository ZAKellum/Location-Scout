//
//  aLandmark.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
// This is how we would refrence data.
// This was used so that i can test to see if the app could run.

import Foundation
import SwiftUI

struct Land: Identifiable{
 
     var id = UUID()
     var imageName: String
     var locationName: String
     var locationType: String
     var city: String
     var state: String
     var propertyType: String
     var description: String
}

struct LandList {
    
    static let topLand = [
    
        Land (imageName:"mikeTHabitat",
              locationName: "Mike the Tiger's Habitat",
              locationType: "Enclosure",
              city: "Baton Rouge",
              state: "Louisiana",
              propertyType: "Public",
              description: "This is Where Mike the Tiger lives. It is one of the most pristine enclosures that a tiger can ask for."),
        
        Land (imageName:"paradeGround",
              locationName: "Parade Ground",
              locationType: "Field",
              city: "Baton Rouge",
              state: "Louisiana",
              propertyType: "Public",
              description: "This is an open field with a nice lawn. Beautiful Oak trees, fresh cut grass, and a view of the LSU Law center."),
        
        
        Land (imageName: "coliseum",
              locationName: "LSU Ag Center Coliseum",
              locationType: "Business Building",
              city: "Baton Rouge",
              state: "Louisiana",
              propertyType: "Private",
              description: "This is LSU's Agriculture Colisseum. It is a nice place to have Rodeo!"),
        
        Land (imageName:"alexBox",
              locationName: "Alex Box",
              locationType: "Baseball Field",
              city: "Baton Rouge",
              state: "Louisiana",
              propertyType: "Private",
              description: "This is Where LSU's baseball team plays. A nice open field to take me out to the ball game!")
        
    ]
}


