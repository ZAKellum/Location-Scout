//
//  LandmarkDetail.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
//  This Still neds to be implemented in the ContentView.
//  This view should show a more detailed view of the information supplied by the user.
//  When they go to this view it has bigger pictures and more information and how to contact the seller.
import SwiftUI

struct LandmarkDetail: View {
  
    var land: Land
    
    var body: some View {
        VStack(spacing:20){
            Spacer()
            
            Image(land.imageName)
                .resizable()
                .scaledToFit()
                .frame(height:240)
                .cornerRadius(12)
            
            Text(land.locationName)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .foregroundColor(.accentColor)
            
            Text(land.propertyType)
                .font(.subheadline)
                .foregroundColor(.accentColor)
            
            HStack(spacing:0) {
            Text(land.city)
            Text(", ")
                Text(land.state)
            }
            
            Text(land.locationType)
                .padding(.top)
                .foregroundColor(.accentColor)
            
            Text(land.description)
                .font(.body)
                .padding(.bottom)
                
                .foregroundColor(.accentColor)
            
            Spacer()
    
        }
        .background(Color.themeForeground.edgesIgnoringSafeArea(.all))
    
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(land: LandList.topLand.first!)
    }
}
