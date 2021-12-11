//
//  ListRowView.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    // This creates the format for the ContentView.
    // This can be updated to look nicer.
    
    var body: some View {
        
        HStack {
            Image("alexBox")
                .resizable()
                .frame(width: 100, height: 100, alignment: .leading)
                .scaledToFit()
                .cornerRadius(5)
                
            
            VStack(alignment: .center, spacing: 5){
                
                Text(item.newLocationName)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
                Text(item.text)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
        }
    }
    
    
    struct ListRowView_Previews: PreviewProvider {
        static var item1 = ItemModel(newLocationName: "Mike the Tiger habitat", text: "This would be a short description", newPropertyType1: true, propertyPrice: "1200", email: "test@gmail.com", ownerName: "Zavien")
        static var item2 = ItemModel(newLocationName: "Test 2", text: "test", newPropertyType1: true, propertyPrice: "1200", email: "test@gmail.com", ownerName: "Zavien")
        
        static var previews: some View {
            Group {
                ListRowView(item: item1)
                ListRowView(item: item2)
            }
        }
    }
}
