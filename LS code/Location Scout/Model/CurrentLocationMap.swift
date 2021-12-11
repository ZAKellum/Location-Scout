//
//  CurrentLocationMap.swift
//  Location Scout
//
//  Created by Zavien Kellum, Samuel Weiner, Robert Williamson, and Andrew Ellender
// This is where the user's current location is taken and updated into the app.
//
import MapKit

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2D(latitude: 30.41300, longitude: -91.18009)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
}

final class CurrentLocationMap: NSObject, ObservableObject, CLLocationManagerDelegate {
    
        @Published var region = MKCoordinateRegion(center: MapDetails.startingLocation, span: MapDetails.defaultSpan)
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        }
        else {
            print("Show Alert")
        }
}
    private func checkLocationAuthorization() {
        
        //  This is the authorization code that asks the user if they can use their location to display them on the app.
        //  This is only presented when they first launch the app.
        
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
         
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted due to parantel controls.")
        case .denied:
            print("You have denied this app location permison. Go to Settings.")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate,
                                        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            @unknown default:
            break
        }
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}


