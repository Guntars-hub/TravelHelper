//
//  WorldView.swift
//  TravelHelper
//
//  Created by guntars.grants on 22/02/2021.
//
// Importing MapKit, showing it on screen with default starting point London
// Making flags visible and also clickable by making MapAnnotation aswell NavigationLink


import MapKit
import SwiftUI

struct WorldView: View {
   @EnvironmentObject var locations: Locations
   @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222,
         longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places){
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)){
                    MapAnnotationView(location: location)
//                Image(location.country)
//                    .resizable()
//                    .cornerRadius(10)
//                    .frame(width:80, height: 40)
//                    .shadow(radius: 3)
                }
            }
        }
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
