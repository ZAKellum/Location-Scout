//
//  MapView.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
//
import MapKit
import SwiftUI

struct MapView: View {
    @StateObject private var viewModel = CurrentLocationMap()
    //This calling upon the information gathere in CurrentLocationMap class. and displaying it in here
    var body: some View {
        NavigationView {
            VStack {
                Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                //  This is just calling the currentlocationmap and formating the way it looks.
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 600)
                    .accentColor(Color(.systemPink))
                    .onAppear {
                        viewModel.checkIfLocationServicesIsEnabled()
                    }
                Spacer()
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
